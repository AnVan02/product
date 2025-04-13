<?php
// Kết nối cơ sở dữ liệu
$conn = new mysqli('localhost', 'root', '', '123');
if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}

// Xử lý upload banner
if (isset($_POST['submit'])) {
    if (isset($_FILES['media']) && $_FILES['media']['error'] == 0) {
        $fileName = $_FILES['media']['name'];
        $fileTmpPath = $_FILES['media']['tmp_name'];
        $fileType = $_FILES['media']['type'];

        // Tạo thư mục lưu trữ nếu chưa tồn tại
        $uploadDir = 'uploads/';
        if (!is_dir($uploadDir)) {
            mkdir($uploadDir, 0777, true);
        }

        // Đường dẫn file
        $destination = $uploadDir . $fileName;

        // Kiểm tra xem file có phải là ảnh hoặc video không
        $allowedImageTypes = ['image/jpeg', 'image/png', 'image/gif'];
        $allowedVideoTypes = ['video/mp4', 'video/mpeg'];

        if (in_array($fileType, $allowedImageTypes) || in_array($fileType, $allowedVideoTypes)) {
            if (move_uploaded_file($fileTmpPath, $destination)) {
                // Lưu đường dẫn vào cơ sở dữ liệu
                $stmt = $conn->prepare("INSERT INTO banners (media_path) VALUES (?)");
                $stmt->bind_param("s", $destination);
                $stmt->execute();
                $stmt->close();
                echo "Tải lên thành công!";
            } else {
                echo "Không thể di chuyển file.";
            }
        } else {
            echo "File không hợp lệ (chỉ chấp nhận ảnh và video).";
        }
    } else {
        echo "Lỗi khi tải lên file.";
    }
}

// Xóa banner
if (isset($_GET['delete_id'])) {
    $delete_id = $_GET['delete_id'];

    // Lấy đường dẫn file từ cơ sở dữ liệu
    $stmt = $conn->prepare("SELECT media_path FROM banners WHERE id = ?");
    $stmt->bind_param("i", $delete_id);
    $stmt->execute();
    $stmt->bind_result($media_path);
    $stmt->fetch();
    $stmt->close();

    // Xóa file khỏi thư mục
    if (file_exists($media_path)) {
        unlink($media_path);
    }

    // Xóa bản ghi khỏi cơ sở dữ liệu
    $stmt = $conn->prepare("DELETE FROM banners WHERE id = ?");
    $stmt->bind_param("i", $delete_id);
    if ($stmt->execute()) {
        echo "Đã xóa banner.";
    } else {
        echo "Lỗi khi xóa banner.";
    }
    $stmt->close();
}

// Lấy danh sách banner đã upload
$result = $conn->query("SELECT * FROM banners");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Banner</title>
</head>
<body>
    <h2>Upload Banner (Ảnh/Video)</h2>
    <form action="" method="POST" enctype="multipart/form-data">
        <label for="media">Chọn ảnh hoặc video:</label>
        <input type="file" name="media" id="media" accept="image/*,video/*" required>
        <button type="submit" name="submit">Upload</button>
    </form>

    <h2>Danh sách Banner</h2>
    <table border="1" cellpadding="10">
        <tr>
            <th>ID</th>
            <th>Media</th>
            <th>Thao tác</th>
        </tr>
        <?php while ($row = $result->fetch_assoc()) { ?>
            <tr>
                <td><?php echo $row['id']; ?></td>
                <td>
                    <?php
                    $mediaPath = $row['media_path'];
                    $fileType = mime_content_type($mediaPath);
                    if (strpos($fileType, 'image') !== false) {
                        echo "<img src='$mediaPath' alt='Banner Image' width='100'>";
                    } elseif (strpos($fileType, 'video') !== false) {
                        echo "<video width='100' controls>
                                <source src='$mediaPath' type='$fileType'>
                              </video>";
                    }
                    ?>
                </td>
                <td>
                    <a href="?delete_id=<?php echo $row['id']; ?>" onclick="return confirm('Bạn có chắc chắn muốn xóa banner này?');">Xóa</a>
                </td>
            </tr>
        <?php } ?>
    </table>
</body>
</html>
<style>
    /* Đặt nền và chỉnh font cho toàn trang */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 20px;
}

/* Tiêu đề */
h2 {
    color: #333;
}

/* Form upload */
form {
    background-color: #fff;
    padding: 10px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    margin-bottom: 20px;
    width: 300px;
}

label {
    display: block;
    margin-bottom: 10px;
}

input[type="file"] {
    margin-bottom: 15px;
}

button {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 5px;
}

button:hover {
    background-color: #45a049;
}

/* Bảng banner */
table {
    width: 100%;
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

th, td {
    padding: 10px;
    text-align: center;
}

th {
    background-color: #4CAF50;
    color: white;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

a {
    color: #FF0000;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

img, video {
    max-width: 100px;
    border-radius: 5px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
}

</style>

