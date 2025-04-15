<?php
$sql_article_list = "SELECT * FROM article ORDER BY article_id DESC LIMIT 4";
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
            <ul class="customer-feedback__items d-flex w-100" tabindex="0">
                <?php
                $i = 0;
                while ($row = mysqli_fetch_array($query_article_list)) {
                    $i++;
                ?>
                    <li class="customer-feedback__item d-flex justify-center align-center" id="new-<?php echo $row['article_id'] ?>">
                        <div class="customer-feedback__image w-100">
                            <a href="index.php?page=article&article_id=<?php echo $row['article_id'] ?>"><img class="image-news w-100 h-100 d-block object-fit-cover" src="admin/modules/blog/uploads/<?php echo $row['article_image'] ?>" alt="customer1"></a>
                        </div>
                            <div class="customer-feedback__content w-100 h-100 d-flex">
                                <?php echo $row['article_date'] ?>
                            </span>
                            
                            <span class="customer-feedback__name d-flex align-center">
                                <?php echo $row['article_title']?>
                            </span>
                            <p class="customer-feedback__text h4"><?php echo mb_strimwidth($row['article_content'], 0, 300, "...") ?></p>
                            <hr style="width: 40px;">
                            <a href="index.php?page=article&article_id=<?php echo $row ['article_id']?>"class="subscribe-btn">Xem thêm</a>
                        </div>
                        
                    </li>
                <?php
                }
                ?>
            </ul>
            <a href="..page/base/article.php"class="subscribe-btn">Xem thêm</a>
            <ol>
                <?php
                while ($ol = mysqli_fetch_array($query_article_ol)) {
                ?>
                    <li><a href="#new-<?php echo $ol['article_id'] ?>"></a></li>
                <?php
                }
                ?>
            </ol>
        </div>
    </div>
    
</section>
<!-- end customer feedback -->

<style>
body, h2, p, ul, li, a, img , span {
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

</style>