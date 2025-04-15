<?php
$sql_article_list = "SELECT * FROM article ORDER BY article_id DESC LIMIT 6";
$query_article_list = mysqli_query($mysqli, $sql_article_list);
$query_article_ol = mysqli_query($mysqli, $sql_article_list);
?>

<!-- start customer feedback -->
<section class="customer pd-section">
    <div class="container">
        <div class="row">
            <div class="col section__heading text-center">
                <h2 class="h2">TIN TỨC</h2>
            </div>
        </div>
        <div class="customer-feedback">
            <ul class="customer-feedback__items" tabindex="0">
                <?php
                $i = 0;
                while ($row = mysqli_fetch_array($query_article_list)) {
                    $i++;
                ?>
                    <li class="customer-feedback__item" id="new-<?php echo $row['article_id'] ?>">
                        <div class="customer-feedback__image">
                            <a href="index.php?page=article&article_id=<?php echo $row['article_id'] ?>">
                                <img class="image-news" src="admin/modules/blog/uploads/<?php echo $row['article_image'] ?>" alt="article image">
                            </a>
                        </div>
                        <div class="customer-feedback__content">
                            <a href="index.php?page=article&article_id=<?php echo $row['article_id'] ?>" class="article-title">
                                <span class="customer-feedback__name"><?php echo $row['article_title'] ?></span>
                            </a>
                            <p class="customer-feedback__text"><?php echo mb_strimwidth($row['article_content'], 0, 150, "...") ?></p>
                            <hr>
                            <a href="index.php?page=article&article_id=<?php echo $row['article_id'] ?>" class="read-more">Xem thêm</a>
                        </div>
                    </li>
                <?php
                }
                ?>
            </ul>
            <div class="view-all">
                <a href="index?page=blog" class="subscribe-btn">Xem tất cả</a>
            </div>
        </div>
    </div>
</section>
<!-- end customer feedback -->

<style>
body, h2, p, ul, li, a, img, span {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    color: #333;
}

.pd-section {
    padding: 40px 0;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 15px;
}

.section__heading h2 {
    font-size: 28px;
    font-weight: bold;
    text-align: center;
    margin-bottom: 30px;
    color: #333;
    text-transform: uppercase;
    position: relative;
}

.section__heading h2::after {
    content: '';
    width: 50px;
    height: 3px;
    background-color: #007bff;
    position: absolute;
    bottom: -10px;
    left: 50%;
    transform: translateX(-50%);
}

.customer-feedback__items {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 20px;
    list-style: none;
}

.customer-feedback__item {
    display: flex;
    gap: 20px;
    border: 1px solid #e0e0e0;
    border-radius: 8px;
    overflow: hidden;
    background-color: #fff;
    transition: box-shadow 0.3s ease;
}

.customer-feedback__item:hover {
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.customer-feedback__image {
    flex: 0 0 40%;
    max-width: 40%;
}

.customer-feedback__image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
}

.customer-feedback__content {
    flex: 1;
    padding: 15px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.customer-feedback__name {
    font-size: 18px;
    font-weight: bold;
    color: #007bff;
    margin-bottom: 10px;
    display: block;
}

.customer-feedback__text {
    font-size: 14px;
    color: #666;
    line-height: 1.6;
    margin-bottom: 10px;
}

.customer-feedback__content hr {
    width: 40px;
    border: none;
    border-top: 2px solid #007bff;
    margin: 10px 0;
}

.read-more {
    font-size: 14px;
    color: #007bff;
    text-decoration: none;
    font-weight: bold;
}

.read-more:hover {
    text-decoration: underline;
}

.view-all {
    text-align: center;
    margin-top: 30px;
}

.subscribe-btn {
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    color: #007bff;
    border: 2px solid #007bff;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    transition: background-color 0.3s ease, color 0.3s ease;
}

.subscribe-btn:hover {
    background-color: #007bff;
    color: #fff;
}

@media (max-width: 768px) {
    .customer-feedback__item {
        flex-direction: column;
    }

    .customer-feedback__image {
        max-width: 100%;
    }
}
</style>