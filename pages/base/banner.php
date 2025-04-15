<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banner Carousel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <?php
    // Kết nối tới database
    $conn = new mysqli('localhost', 'root', '', '123');
    if ($conn->connect_error) {
        die("Kết nối thất bại: " . $conn->connect_error);
    }

    // Lấy dữ liệu banner từ database
    $sql = "SELECT media_path FROM banners ORDER BY upload_date DESC";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $first_item = true;
        while ($row = $result->fetch_assoc()) {
            $media_path = $row['media_path'];
            $file_ext = strtolower(pathinfo($media_path, PATHINFO_EXTENSION));

            $active_class = $first_item ? 'active' : '';
            $first_item = false;

            echo '<div class="carousel-item ' . $active_class . '">';
            
            if (in_array($file_ext, ['jpg', 'jpeg', 'png', 'gif', 'webp'])) {
                echo "<img src='$media_path' class='d-block w-100' alt='Banner' style='height:500px;'>";
            } elseif (in_array($file_ext, ['mp4', 'webm', 'ogg'])) {
                // Chọn đúng MIME type dựa trên định dạng video
                $mime_type = ($file_ext === 'mp4') ? 'video/mp4' :
                             (($file_ext === 'webm') ? 'video/webm' : 'video/ogg');
                echo "<video class='d-block w-100' controls preload='metadata' style='height:500px;'>
                        <source src='$media_path' type='$mime_type'>
                        Trình duyệt của bạn không hỗ trợ thẻ video.
                      </video>";
            }

            echo '</div>';
        }
    } else {
        echo "<div class='carousel-item active'>
                <img src='uploads/default-banner.jpg' class='d-block w-100' alt='Default Banner' style='height:500px;'>
              </div>";
    }

    // Đóng kết nối
    $conn->close();
    ?>
  </div>

  <!-- Nút điều khiển slide -->
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

</body>
</html>



<!-- logo -->
<div class="inner">
    <div class="section-title text-center">
        <span class="section-title-border"></span>
    </div>
    <div class="grid">
        <div id="owl-brands-slider" class="owl-carousel owl-theme">
            <div class="item">
                <a href="index.php?page=products&brand_id=7" class="text-center"><img src="assets/images/logo/14.png" alt="LEXAR"></a>
            </div>
			<div class="item">
                <a href="index.php?page=products&brand_id=2" class="text-center"><img src="assets/images/logo/13.png" alt="KINGSTON"></a>
            </div>
            <div class="item">
                <a href="index.php?page=products&brand_id=8" class="text-center"><img src="assets/images/logo/2.png" alt="AOC"></a>
            </div>
		  <div class="item">
                <a href="index.php?page=products&brand_id=1" class="text-center"><img src="assets/images/logo/3.png" alt="INTEL"></a>
            </div>
		  <div class="item">
                <a href="index.php?page=products&brand_id=10" class="text-center"><img src="assets/images/logo/4.png" alt="AROCK"></a>
            </div>
			<div class="item">
                <a href="index.php?page=products&brand_id=3" class="text-center"><img src="assets/images/logo/6.png" alt="AMD"></a>
            </div>
		  
		  <div class="item">
                <a href="index.php?page=products&brand_id=4" class="text-center"><img src="assets/images/logo/7.png" alt="G.SKILL"></a>
            </div>
		  <div class="item">
                <a href="index.php?page=products&brand_id=" class="text-center"><img src="assets/images/logo/9.png" alt="PALIT"></a>
            </div>
		  <div class="item">
                <a href="index.php?page=products&brand_id=" class="text-center"><img src="assets/images/logo/10.jpg" alt="POWERCOLOR"></a>
            </div>
		  <div class="item">
                <a href="index.php?page=products&brand_id=11" class="text-center"><img src="assets/images/logo/11.png" alt="ASUS"></a>
            </div>
		  <div class="item">
                <a href="index.php?page=products&brand_id=" class="text-center"><img src="assets/images/logo/12.png" alt="PHILIPS"></a>
            </div>
          
		 
            <!-- Thêm các item tương tự cho các đối tác khác -->
        </div>
    </div>
    </div>
   <!-- Owl Carousel CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">

<!-- Owl Carousel JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

    <style>
		.owl-carousel .item img {
    
    max-height: 100px; /* Chiều cao cố định cho logo */
    width: auto; /* Chiều rộng tự động để giữ tỷ lệ */
    margin: 0 auto; /* Căn giữa logo */
    display: block; /* Hiển thị logo dưới dạng khối để dễ dàng căn giữa */
    background: white;
}
    </style>

    <script>
$(document).ready(function(){
    $("#owl-brands-slider").owlCarousel({ 
        loop: true, // Vòng lặp liên tục
        margin: 10, // Khoảng cách giữa các item
        nav: true, // Hiển thị nút điều hướng
        autoplay: true, // Tự động chuyển slide
        autoplayTimeout: 3000, // Thời gian chờ giữa các slide (3 giây)
        navText: ["",""], // Xóa nội dung của các nút "Prev" và "Next"
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 3
            },
            1000: {
                items: 5
            }
        }
    });
});
</script>
<style>
    /* Đặt chiều rộng và khoảng cách của carousel */
.grid {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
}

#owl-brands-slider {
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    padding: 10px 0;
}

/* Kiểu cho từng item */
#owl-brands-slider .item {
    text-align: center;
    padding: 10px;
    transition: transform 0.3s ease;
}

#owl-brands-slider .item:hover {
    transform: scale(1.05); /* Phóng to khi hover */
}

/* Kiểu cho hình ảnh */
#owl-brands-slider .item img {
    max-width: 150px; /* Giới hạn chiều rộng hình ảnh */
    max-height: 100px; /* Giới hạn chiều cao hình ảnh */
    margin: 0 auto;
    display: block;
}

/* Kiểu cho section title */
.section-title {
    margin-bottom: 30px;
}

.section-title span {
    display: block;
    width: 100px;
    height: 3px;
    background-color: #f26d21;
    margin: 0 auto;
    margin-top: 10px;
}

/* CSS cho nút điều hướng (Prev & Next) */
.owl-nav button.owl-prev, 
.owl-nav button.owl-next {
    background-color: #f26d21;
    border: none;
    color: #fff;
    padding: 10px;
    font-size: 18px;
    transition: background-color 0.3s ease;
}

.owl-nav button.owl-prev:hover, 
.owl-nav button.owl-next:hover {
    background-color: #ff8c42;
}

.owl-nav button.owl-prev {
    position: absolute;
    left: -25px;
    top: 50%;
    transform: translateY(-50%);
}

.owl-nav button.owl-next {
    position: absolute;
    right: -25px;
    top: 50%;
    transform: translateY(-50%);
}

/* Responsive */
@media only screen and (max-width: 768px) {
    #owl-brands-slider .item img {
        max-width: 80px;
        max-height: 80px;
    }

    .owl-nav button.owl-prev, 
    .owl-nav button.owl-next {
        padding: 8px;
        font-size: 16px;
    }
}

@media only screen and (max-width: 480px) {
    #owl-brands-slider .item img {
        max-width: 60px;
        max-height: 60px;
    }

    .owl-nav button.owl-prev, 
    .owl-nav button.owl-next {
        padding: 6px;
        font-size: 14px;
    }
}
</style>

<!-- liên kết -->

<div class="contact-fixed">
    <a href="https://zalo.me/0909613837" target="_blank">
        <img src="assets/images/logo/zalo.webp" alt="Zalo" />
    </a>
    <a href="https://www.facebook.com/VietSonICT" target="_blank">
        <img src="assets/images/logo/faceb.png" alt="Facebook" />
    </a>
</div>

<style>
.contact-fixed {
    position: fixed;  /* Cố định vị trí */
    bottom: 20px;     /* Khoảng cách từ dưới lên */
    right: 20px;      /* Khoảng cách từ bên phải vào */
    display: flex;    /* Sử dụng flexbox để sắp xếp */
    flex-direction: column; /* Sắp xếp theo cột */
    gap: 15px;        /* Khoảng cách giữa các biểu tượng */
}

.contact-fixed a {
    display: block;    /* Hiển thị liên kết dưới dạng khối */
    width: 50px;      /* Kích thước biểu tượng */
    height: 50px;     /* Kích thước biểu tượng */
}

.contact-fixed img {
    width: 100%;      /* Chiếm toàn bộ chiều rộng của liên kết */
    height: 100%;     /* Chiếm toàn bộ chiều cao của liên kết */
    object-fit: contain; /* Giữ nguyên tỷ lệ hình ảnh */
    border-radius: 50%;  /* Bo tròn biểu tượng */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Đổ bóng cho biểu tượng */
    transition: transform 0.3s; /* Hiệu ứng chuyển tiếp khi hover */
}

.contact-fixed img:hover {
    transform: scale(1.1); /* Phóng to biểu tượng khi hover */
}

</style>
