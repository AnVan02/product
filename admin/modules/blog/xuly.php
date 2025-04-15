<?php
include('../../config/config.php');

// Bật hiển thị lỗi để debug (chỉ dùng trong môi trường phát triển)
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Tăng giới hạn upload cho video
ini_set('upload_max_filesize', '50M');
ini_set('post_max_size', '100M');
ini_set('max_execution_time', 300);

// Hàm tải video từ URL
function downloadVideo($url, $videoDir) {
    $videoInfo = pathinfo($url);
    $videoType = strtolower($videoInfo['extension'] ?? '');
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
$article_id = $_POST['article_id'] ?? null;
$article_author = $_POST['article_author'] ?? null;
$article_title = $_POST['article_title'] ?? null;
$article_summary = $_POST['article_summary'] ?? null;
$article_content = $_POST['article_content'] ?? null;
$id = $_POST['id'] ?? '';
$article_date = $_POST['article_date'] ?? date('Y-m-d');
$article_status = $_POST['article_status'] ?? null;
$article_tag = $_POST['article_tag'] ?? null;
$article_tag = trim($article_tag ?? '');
$article_tag = strtolower($article_tag);
$article_tag = preg_replace('/\s+/', ' ', $article_tag);
$article_tag = str_replace('#', '', $article_tag);

// Thư mục lưu trữ
$uploadDir = "Uploads/";
$imageDir = $uploadDir . "images/";
$videoDir = $uploadDir . "videos/";

if (!file_exists($imageDir)) mkdir($imageDir, 0777, true);
if (!file_exists($videoDir)) mkdir($videoDir, 0777, true);

// Xử lý file hình ảnh
$article_image_path = '';
if (isset($_FILES['article_image']) && $_FILES['article_image']['error'] == 0) {
    $imageName = time() . '_' . basename($_FILES['article_image']['name']);
    $targetImage = $imageDir . $imageName;
    if (move_uploaded_file($_FILES['article_image']['tmp_name'], $targetImage)) {
        $article_image_path = $targetImage; // Lưu đường dẫn tương đối
    } else {
        error_log("Lỗi khi di chuyển file ảnh: " . $_FILES['article_image']['name']);
    }
}

// Xử lý file video
$article_video_path = '';
if (isset($_FILES['article_video']) && $_FILES['article_video']['error'] == 0) {
    $videoName = time() . '_' . basename($_FILES['article_video']['name']);
    $targetVideo = $videoDir . $videoName;
    if (move_uploaded_file($_FILES['article_video']['tmp_name'], $targetVideo)) {
        $article_video_path = $targetVideo; // Lưu đường dẫn tương đối
    } else {
        erroryczny;
        error_log("Lỗi khi di chuyển file video: " . $_FILES['article_video']['name']);
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
    // Tạo ID mới nếu không có
    if (empty($id)) {
        $id = uniqid('article_');
    } else {
        // Chuẩn hóa ID khi thêm mới
        $id = trim($id);
        $id = preg_replace('/[^a-zA-Z0-9_-]/', '-', $id); // Chỉ cho phép chữ, số, _, và -
    }

    error_log("ID khi thêm: $id");

    // Kiểm tra trùng lặp bài viết
    $sql_check = "SELECT * FROM article WHERE article_id = ?";
    $stmt = $mysqli->prepare($sql_check);
    if (!$stmt) die("Lỗi SQL: " . $mysqli->error);
    $stmt->bind_param("s", $id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        die("<script>alert('Lỗi: Đường dẫn bài viết đã tồn tại!'); window.history.back();</script>");
    }

    // Chuyển mảng video thành chuỗi JSON
    $videoNamesJson = json_encode($videoNames);

    // Thêm vào database
    $sql_add = "INSERT INTO article (article_id, article_author, article_title, article_summary, article_content, article_image, article_date, article_tag, article_status, article_video) 
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $mysqli->prepare($sql_add);
    if (!$stmt) die("Lỗi SQL: " . $mysqli->error);
    $stmt->bind_param("ssssssssss", $id, $article_author, $article_title, $article_summary, $article_content, $article_image_path, $article_date, $article_tag, $article_status, $videoNamesJson);

    if ($stmt->execute()) {
        header('Location: ../../index.php?action=article&query=article_list');
        exit;
    } else {
        error_log("Lỗi INSERT: " . $stmt->error);
        die("Lỗi khi thêm bài viết: " . $stmt->error);
    }


// Sửa bài viết
} elseif (isset($_POST['article_edit'])) {
    if (empty($id)) {
        die("<script>alert('Lỗi: Không tìm thấy đường dẫn bài viết!'); window.history.back();</script>");
    }

    error_log("ID khi sửa: $id");

    // Kiểm tra bài viết tồn tại
    $sql_check = "SELECT article_image, article_video FROM article WHERE article_id = ?";
    $stmt = $mysqli->prepare($sql_check);
    if (!$stmt) die("Lỗi SQL: " . $mysqli->error);
    $stmt->bind_param("s", $id);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows == 0) {
        die("<script>alert('Lỗi: Bài viết không tồn tại!'); window.history.back();</script>");
    }

    // Lấy thông tin cũ
    $row = $result->fetch_assoc();
    $old_image = $row['article_image'];
    $old_video = $row['article_video'];

    // Giữ ảnh cũ nếu không có ảnh mới
    if (empty($article_image_path)) {
        $article_image_path = $old_image;
    } else {
        // Xóa ảnh cũ nếu có ảnh mới
        if (!empty($old_image) && file_exists($old_image)) {
            unlink($old_image);
        }
    }

    // Giữ video cũ nếu không có video mới
    if (empty($article_video_path)) {
        $article_video_path = $old_video;
    } else {
        // Xóa video cũ nếu có video mới
        if (!empty($old_video) && file_exists($old_video)) {
            unlink($old_video);
        }
    }

    // Chuyển mảng video thành chuỗi JSON
    $videoNamesJson = json_encode($videoNames);

    // Cập nhật bài viết
    $sql_update = "UPDATE article SET article_author=?, article_title=?, article_summary=?, article_content=?, article_image=?, article_date=?, article_tag=?, article_status=?, article_video=? WHERE article_id=?";
    $stmt = $mysqli->prepare($sql_update);
    if (!$stmt) die("Lỗi SQL: " . $mysqli->error);
    $stmt->bind_param("ssssssssss", $article_author, $article_title, $article_summary, $article_content, $article_image_path, $article_date, $article_tag, $article_status, $videoNamesJson, $id);

    if ($stmt->execute()) {
        header('Location: ../../index.php?action=article&query=article_list');
        exit;
    } else {
        error_log("Lỗi UPDATE: " . $stmt->error);
        die("Lỗi khi cập nhật bài viết: " . $stmt->error);
    }

// Xóa bài viết
} elseif (isset($_GET['data'])) {
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

    foreach ($ids as $id) {
        error_log("ID khi xóa: $id");

        // Lấy thông tin bài viết để xóa file
        $sql = "SELECT article_image, article_video FROM article WHERE article_id = ?";
        $stmt = $mysqli->prepare($sql);
        if (!$stmt) die("Lỗi SQL: " . $mysqli->error);
        $stmt->bind_param("s", $id);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($row = $result->fetch_assoc()) {
            // Xóa ảnh
            if (!empty($row['article_image']) && file_exists($row['article_image'])) {
                unlink($row['article_image']);
            }
            // Xóa video
            if (!empty($row['article_video']) && file_exists($row['article_video'])) {
                unlink($row['article_video']);
            }
        }

        // Xóa bản ghi
        $sql_delete = "DELETE FROM article WHERE article_id = ?";
        $stmt = $mysqli->prepare($sql_delete);
        if (!$stmt) die("Lỗi SQL: " . $mysqli->error);
        $stmt->bind_param("s", $id);
        $stmt->execute();
    }

    header('Location: ../../index.php?action=article&query=article_list');
    exit;
}

// Truy vấn bài viết theo tag
if (isset($_GET['tag'])) {
    $tag = mysqli_real_escape_string($mysqli, strtolower($_GET['tag']));
    $sql_tag = "SELECT * FROM article WHERE LOWER(article_tag) LIKE ? ORDER BY article_id DESC";
    $stmt = $mysqli->prepare($sql_tag);
    if (!$stmt) die("Lỗi SQL: " . $mysqli->error);
    $likeTag = "%$tag%";
    $stmt->bind_param("s", $likeTag);
    $stmt->execute();
    $query_tag = $stmt->get_result();

    if ($query_tag->num_rows > 0) {
        while ($row = $query_tag->fetch_assoc()) {
            echo "<h2><a href='/article/" . urlencode($row['article_id']) . "'>" . htmlspecialchars($row['article_title']) . "</a></h2>";
            echo "<p><strong>Tóm tắt:</strong> " . htmlspecialchars($row['article_summary']) . "</p>";
            echo "<div><strong>Nội dung:</strong> " . nl2br(htmlspecialchars($row['article_content'])) . "</div>";
            if (!empty($row['article_image']) && file_exists($row['article_image'])) {
                echo "<div><strong>Ảnh:</strong> <img src='" . htmlspecialchars($row['article_image']) . "' width='200' alt='Article Image'></div>";
            } else {
                echo "<div><strong>Ảnh:</strong> Không có ảnh</div>";
            }
            echo "<hr>";
        }
    } else {
        echo "Không có bài viết nào thuộc tag này.";
    }
}
?>