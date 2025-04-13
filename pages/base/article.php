<?php
// Bật hiển thị lỗi
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Bao gồm tệp kết nối cơ sở dữ liệu
include('admin/config/config.php');

// Kiểm tra nếu article_id được truyền qua URL
if (!isset($_GET['article_id']) || empty($_GET['article_id'])) {
    die("Không tìm thấy bài viết.");
}

// Lấy article_id từ URL và xử lý để tránh lỗi SQL Injection
$article_id = mysqli_real_escape_string($mysqli, $_GET['article_id']);

// Truy vấn bài viết dựa trên article_id
$sql_article = "SELECT * FROM article WHERE article_id = '$article_id' LIMIT 1";
$query_article = mysqli_query($mysqli, $sql_article);

// Kiểm tra nếu xảy ra lỗi truy vấn SQL
if (!$query_article) {
    die("Lỗi truy vấn SQL: " . mysqli_error($mysqli));
}

// Kiểm tra nếu không tìm thấy bài viết
if (mysqli_num_rows($query_article) === 0) {
    die("Bài viết không tồn tại hoặc đã bị xóa.");
}

// Lấy dữ liệu bài viết
$article = mysqli_fetch_assoc($query_article);
?>


<div class="container-layout">
    <div class="main-layout">
        <!-- Cột bên trái: Tin tức nổi bật -->
        <div class="sidebar">
            <h3 style="font-weight: bold; color: #FF0000;">Tin tức nổi bật</h3>
            <p>Bạn có thể khám phá thêm nhiều thông tin mới nhất về công nghệ và giải pháp từ tin tức ROSA</p>
            <?php
            // Truy vấn 4 bài viết mới nhất
            $newsQuery = "SELECT article_id, article_title, article_image, article_date FROM article ORDER BY article_date DESC LIMIT 4";
            $newsResult = mysqli_query($mysqli, $newsQuery);
            if ($newsResult && mysqli_num_rows($newsResult) > 0) {
                while ($news = mysqli_fetch_assoc($newsResult)) { ?>
                    <div class="news-card">
                        <a href="index.php?page=article&article_id=<?= htmlspecialchars($news['article_id']); ?>">
                            <img src="admin/modules/blog/uploads/<?= htmlspecialchars($news['article_image']); ?>" alt="News Image">
                        </a>
                        <div class="news-content">
                            <div class="news-title">
                                <a href="index.php?page=article&article_id=<?= htmlspecialchars($news['article_id']); ?>">
                                    <?= htmlspecialchars($news['article_title']); ?>
                                </a>
                            </div>
                            <p class="news-date">Cập nhật ngày <?= htmlspecialchars(date("d/m/Y", strtotime($news['article_date']))); ?></p>
                        </div>
                    </div>
                <?php }
            } else {
                echo '<p>Không có tin tức nào.</p>';
            }
            ?>
        </div>

        <!-- Cột bên phải: Bài viết chính -->
        <section class="article">
            <div class="article__content">
                <h1><?= htmlspecialchars($article['article_title']); ?></h1>
                <div class="article-info">
                    <div class="article-meta d-flex space-between align-center">
                        <span style="font-size: 17px;">
                            <?= date("d/m/Y", strtotime($article['article_date'])); ?>
                            <?php if (!empty($article['article_author'])) {
                                echo " - " . htmlspecialchars($article['article_author']);
                            } ?>
                        </span>
                        <span class="social-icons">
                            <a href="https://www.facebook.com/sharer/sharer.php?u=<?= urlencode('https://your-site.com/index.php?page=article&article_id=' . $article_id); ?>" target="_blank">
                                <i class="fab fa-facebook" style="color: #1877F2; font-size: 25px;"></i>
                            </a>
                            <a href="https://twitter.com/intent/tweet?url=<?= urlencode('https://your-site.com/index.php?page=article&article_id=' . $article_id); ?>" target="_blank">
                                <i class="fab fa-twitter" style="color: #1DA1F2; font-size: 25px;"></i>
                            </a>
                            <a href="https://www.linkedin.com/shareArticle?mini=true&url=<?= urlencode('https://your-site.com/index.php?page=article&article_id=' . $article_id); ?>" target="_blank">
                                <i class="fab fa-linkedin" style="color: #0A66C2; font-size: 25px;"></i>
                            </a>
                        </span>
                    </div>
                    <hr style="width=30px">
                </div>
                <div class="article__context"><?= htmlspecialchars_decode($article['article_content']); ?></div> 
                <div class="article__summary"><?= htmlspecialchars_decode($article['article_summary']); ?></div>

                
                <div class="article__tag">
                    <strong>Thẻ: </strong>
                    <?php
                    if (!empty($article['article_tag'])) {
                        $tags = explode(',', $article['article_tag']);
                        foreach ($tags as $tag) {
                            $tag = trim($tag);
                            if (!empty($tag)) {
                                echo '<a href="index.php?page=blog&tag=' . urlencode($tag) . '" class="article_link">' . htmlspecialchars($tag) . '</a>';
                            }
                        }
                    }
                    ?>
                </div>
            </div>
        </section>
    </div>
</div>

<style>
body, h2, p, ul, li, a, img {
    font-family: Arial, sans-serif;
    line-height: 1.8;
    margin: 0;
    padding: 0;
    font-size: 16px;
    list-style: none;
    text-decoration: none;
    box-sizing: border-box;
    color: #333;
}

body {
    font-family: 'Arial', sans-serif;
    line-height: 1.8;
    color: #333;
    background: #f9f9f9;
    margin: 0;
}

.article-meta {
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-size: 20px;
}

.social-icons a {
    margin-right: 12px;
    text-decoration: none;
    font-size: 25px;
}

h1 {
    font-size: 40px;
}

.container-layout {
    width: 90%;
    margin: 0 auto;
    padding: 0;
}

/* Bố cục chính */
.main-layout {
    display: flex;
    justify-content: space-between;
    margin: 30px 0;
    gap: 20px;
}

/* Cột bên trái: Sidebar */
.sidebar {
    width: 25%;
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    position: sticky;
    top: 20px;
    align-self: flex-start;
    max-height: calc(100vh - 40px);
}

.sidebar h3 {
    font-size: 1.5rem;
    margin-bottom: 10px;
    color: #222;
}

.sidebar p {
    font-size: 0.9rem;
    color: #777;
    margin-bottom: 20px;
}

.news-card {
    display: flex;
    align-items: center;
    margin-bottom: 20px;
    gap: 15px;
    padding-bottom: 15px;
    border-bottom: 1px solid #ddd;
}

.news-card:last-child {
    border-bottom: none;
}

.news-card img {
    width: 100px;
    height: 100px;
    object-fit: cover;
    border-radius: 5px;
}

.news-content {
    flex: 1;
}

.news-title a {
    font-size: 1rem;
    color: #222;
    font-weight: bold;
    text-decoration: none;
    line-height: 1.4;
}

.news-title a:hover {
    color: rgb(252, 71, 71);
}

.news-date {
    font-size: 0.85rem;
    color: #777;
    margin-top: 5px;
}

/* Cột bên phải: Bài viết chính */
.article {
    width: 75%;
}

.article__content {
    width: 100%;
    padding: 44px 5%;
    background: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.article__content h1 {
    font-size: 2rem;
    font-weight: bold;
    margin-bottom: 10px;
    color: #222;
}

.article__content span {
    font-size: 0.9rem;
    color: #777;
}

.article__context {
    font-size: 1rem;
    line-height: 1.8;
    color: #444;
    margin-bottom: 20px;
    text-align: justify;
}

.article__tag {
    margin-top: 10px;
}

.article__tag strong {
    font-size: 17px;
    color: #333;
    margin-right: 5px;
}

.article__tag a {
    display: inline-block;
    background: #f5f5f5;
    color: #FF0000;
    padding: 5px 10px;
    border-radius: 8px;
    font-size: 16px;
    margin: 5px;
    text-decoration: none;
    transition: background 0.3s ease;
}

.article__tag a:hover {
    background-color: rgb(223, 6, 45);
    color: #FFFFFF;
}

img {
    max-width: 100%;
    height: auto;
    display: block;
}

/* Responsive */
@media screen and (max-width: 600px) {
    .main-layout {
        flex-direction: column-reverse;
    }

    .sidebar,
    .article {
        width: 100%;
    }

    .news-card {
        flex-direction: row;
        align-items: center;
    }

    .sidebar {
        position: static;
        max-height: none;
        overflow-y: visible;
    }

    .news-card img {
        width: 80px;
        height: 80px;
    }

    .article__content h1 {
        font-size: 1.5rem;
    }

    .article__content span {
        font-size: 0.8rem;
    }

    .article__context {
        font-size: 0.9rem;
    }

    .article__content img {
        max-width: 100%;
        height: auto;
        display: block;
        object-fit: contain;
        width: 100% !important;
    }
}
</style>

