<?php
include('../../config/config.php');

// Bật hiển thị lỗi để debug
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Tăng giới hạn upload cho video
ini_set('upload_max_filesize', '50M');
ini_set('post_max_size', '100M');
ini_set('max_execution_time', 300);

// Hàm tải video từ URL (giữ nguyên)
function downloadVideo($url, $videoDir) {
    $videoInfo = pathinfo($url);
    $videoType = strtolower($videoInfo['extension']);
    $allowedVideoTypes = ['mp4', 'webm', 'ogg', 'mov', 'avi'];
    
    if (!in_array($videoType, $allowedVideoTypes)) {
        return ['error' => 'Định dạng video không được hỗ trợ'];
    }

    $newVideoName = time() . '_' . uniqid() . '.' . $videoType;
    $targetPath = $videoDir . $newVideoName;

    $videoContent = @file_get_contents($url);
    if ($videoContent === false) {
        return ['error' => 'Không thể tải video từ URL'];
    }

    if (file_put_contents($targetPath, $videoContent)) {
        return [
            'name' => $newVideoName,
            'path' => $targetPath,
            'type' => $videoType
        ];
    }

    return ['error' => 'Không thể lưu video'];
}

// Kiểm tra kết nối CSDL
if (!$mysqli) {
    die("Lỗi kết nối MySQL: " . mysqli_connect_error());
}

// Nhận dữ liệu từ form
$data = $_GET['data'] ?? null;
$ids = [];
if ($data !== null && !empty($data)) {
    $decoded = json_decode($data, true);
    if (json_last_error() === JSON_ERROR_NONE) {
        $ids = $decoded;
    } else {
        die("<script>alert('Lỗi: Dữ liệu JSON không hợp lệ!'); window.history.back();</script>");
    }
}

$article_id = $_POST['article_id'] ?? null;
$article_author = $_POST['article_author'] ?? null;
$article_title = $_POST['article_title'] ?? null;
$article_summary = $_POST['article_summary'] ?? null;
$article_content = $_POST['article_content'] ?? null;
$id = $_POST['id'] ?? '';
$id = trim($id);
$id = str_replace(' ', '-', $id);
$article_image = $_FILES['article_image']['name'] ?? null;
$article_image_tmp = $_FILES['article_image']['tmp_name'] ?? null;
$article_image = $article_image ? time() . '_' . basename($article_image) : null;
$article_date = $_POST['article_date'] ?? date('Y-m-d');
$article_status = $_POST['article_status'] ?? null;
$article_tag = $_POST['article_tag'] ?? null;
$article_tag = trim($article_tag);
$article_tag = strtolower($article_tag);
$article_tag = preg_replace('/\s+/', ' ', $article_tag);
$article_tag = str_replace('#', '', $article_tag);

// Thư mục lưu trữ
$imageDir = "uploads/images/";
$videoDir = "Uploads/videos/";

if (!file_exists($imageDir)) mkdir($imageDir, 0777, true);
if (!file_exists($videoDir)) mkdir($videoDir, 0777, true);

// Xử lý file hình ảnh
$article_image = '';
if (isset($_FILES['article_image']) && $_FILES['article_image']['error'] == 0) {
    $uploadDir = 'uploads/';
    $imageName = time() . '_' . basename($_FILES['article_image']['name']);
    $targetImage = $uploadDir . $imageName;
    if (move_uploaded_file($_FILES['article_image']['tmp_name'], $targetImage)) {
        $article_image = '/' . $targetImage;
    }
}

// Xử lý file video
$article_video = '';
if (isset($_FILES['article_video']) && $_FILES['article_video']['error'] == 0) {
    $uploadDir = 'Uploads/';
    $videoName = time() . '_' . basename($_FILES['article_video']['name']);
    $targetVideo = $uploadDir . $videoName;
    if (move_uploaded_file($_FILES['article_video']['tmp_name'], $targetVideo)) {
        $article_video = '/' . $targetVideo;
    }
}

// Xử lý video từ CKEditor
$videoNames = [];
if (isset($_POST['article_content'])) {
    $article_content = $_POST['article_content'];
    
    preg_match_all('/<video[^>]*>(.*?)<\/video>/is', $article_content, $matches);
    
    if (!empty($matches[0])) {
        foreach ($matches[0] as $videoTag) {
            preg_match('/src="([^"]+)"/', $videoTag, $srcMatch);
            if (!empty($srcMatch[1])) {
                $videoPath = $srcMatch[1];
                $videoNames[] = basename($videoPath);
            }
        }
    }
}

// Thêm bài viết
if (isset($_POST['article_add'])) {
    if (empty($id)) {
        $id = uniqid('article_');
    }

    // Kiểm tra trùng lặp bài viết
    $sql_check = "SELECT * FROM article WHERE article_id = ?"; // Thay 'id' thành 'article_id'
    $stmt = $mysqli->prepare($sql_check);
    if (!$stmt) die("Lỗi SQL: " . $mysqli->error);
    $stmt->bind_param("s", $id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        die("<script>alert('Lỗi: Đường dẫn bài viết đã tồn tại!'); window.history.back();</script>");
    }

    // Upload ảnh nếu có
    if ($article_image && $article_image_tmp) {
        move_uploaded_file($article_image_tmp, 'Uploads/' . $article_image);
    }
    
    // Kết hợp summary với video links (nếu có)
    $full_summary = $article_summary;
    if (!empty($video_links)) {
        $full_summary .= implode("\n", $video_links);
    }
 
    // Thêm vào database
    $sql_add = "INSERT INTO article (article_id, article_author, article_title, article_summary, article_content, article_image, article_date, article_tag, article_status, article_video) 
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $mysqli->prepare($sql_add);
    if (!$stmt) die("Lỗi SQL: " . $mysqli->error);
    
    // Chuyển mảng video thành chuỗi JSON để lưu
    $videoNamesJson = json_encode($videoNames);
    
    $stmt->bind_param("ssssssssss", $id, $article_author, $article_title, $full_summary, $article_content, $article_image, $article_date, $article_tag, $article_status, $videoNamesJson);
    
    if ($stmt->execute()) {
        header('Location: ../../index.php?action=article&query=article_list');
        exit;
    } else {
        die("Lỗi khi thêm bài viết: " . $stmt->error);
    }

// Sửa bài viết
} elseif (isset($_POST['article_edit'])) {
    if (empty($id)) {
        die("<script>alert('Lỗi: Không tìm thấy đường dẫn bài viết!'); window.history.back();</script>");
    }

    // Kiểm tra ảnh mới
    if ($article_image && $article_image_tmp) {
        move_uploaded_file($article_image_tmp, 'Uploads/' . $article_image);
        
        // Xóa ảnh cũ
        $sql_old_image = "SELECT article_image FROM article WHERE article_id = ?";
        $stmt = $mysqli->prepare($sql_old_image);
        if (!$stmt) die("Lỗi SQL: " . $mysqli->error);
        $stmt->bind_param("s", $id);
        $stmt->execute();
        $result = $stmt->get_result();
        
        if ($row = $result->fetch_assoc()) {
            if (!empty($row['article_image']) && file_exists('Uploads/' . $row['article_image'])) {
                unlink('Uploads/' . $row['article_image']);
            }
        }
    } else {
        // Nếu không có ảnh mới, giữ nguyên ảnh cũ
        $sql_get_old_image = "SELECT article_image FROM article WHERE article_id=?";
        $stmt = $mysqli->prepare($sql_get_old_image);
        if (!$stmt) die("Lỗi SQL: " . $mysqli->error);
        $stmt->bind_param("s", $id);
        $stmt->execute();
        $result = $stmt->get_result();
        if ($row = $result->fetch_assoc()) {
            $article_image = $row['article_image'];
        }
    }

    // Cập nhật bài viết
    $sql_update = "UPDATE article SET article_author=?, article_title=?, article_summary=?, article_content=?, article_image=?, article_date=?, article_tag=?, article_status=? WHERE article_id=?";
    $stmt = $mysqli->prepare($sql_update);
    if (!$stmt) die("Lỗi SQL: " . $mysqli->error);
    $stmt->bind_param("sssssssss", $article_author, $article_title, $article_summary, $article_content, $article_image, $article_date, $article_tag, $article_status, $id);
    if (!$stmt->execute()) {
        die("Lỗi UPDATE: " . $stmt->error);
    }
    
    header('Location: ../../index.php?action=article&query=article_list');
}
// Xóa bài viết
else {
    foreach ($ids as $id) {
        $sql = "SELECT * FROM article WHERE article_id = '$id' LIMIT 1";
        $query = mysqli_query($mysqli, $sql);
        while ($row = mysqli_fetch_array($query)) {
            if (!empty($row['article_image']) && file_exists('Uploads/' . $row['article_image'])) {
                unlink('Uploads/' . $row['article_image']);
            }
        }
        $sql_delete = "DELETE FROM article WHERE article_id = '$id'";
        mysqli_query($mysqli, $sql_delete);
    }
    header('Location: ../../index.php?action=article&query=article_list');
}

// Truy vấn các bài viết thuộc tag
if (isset($_GET['tag'])) {
    $tag = strtolower(mysqli_real_escape_string($mysqli, $_GET['tag']));

    $sql_tag = "SELECT * FROM article WHERE LOWER(article_tag) LIKE '%$tag%' ORDER BY article_id DESC";
    $query_tag = mysqli_query($mysqli, $sql_tag);

    if (mysqli_num_rows($query_tag) > 0) {
        while ($row = mysqli_fetch_array($query_tag)) {
            echo "<h2><a href='" . urlencode($row['article_id']) . "'>" . htmlspecialchars($row['article_title']) . "</a></h2>";
            echo "<p><strong>Tóm tắt:</strong> " . htmlspecialchars($row['article_summary']) . "</p>";
            echo "<div><strong>Nội dung:</strong> " . nl2br(htmlspecialchars($row['article_content'])) . "</div>";
            echo "<hr>";
        }
    } else {
        echo "Không có bài viết nào thuộc tag này.";
    }
}
?>