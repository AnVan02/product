<?php

// Trong admin/config/config.php
$mysqli = new mysqli("localhost", "root", "", "123");

// Kiểm tra kết nối
if ($mysqli->connect_error) {
    die("Lỗi kết nối MySQL: " . $mysqli->connect_error);
}

// Thiết lập mã hóa UTF-8
$mysqli->set_charset("utf8");