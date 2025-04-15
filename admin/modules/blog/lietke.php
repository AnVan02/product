<?php
$sql_article_list ="";
$search = isset($_GET['search']) ? mysqli_real_escape_string($mysqli, $_GET['search']) : '';

if (!empty($search)) {
    $sql_article_list = "SELECT * FROM article WHERE article_title LIKE '%$search%' ORDER BY article_id DESC";
} else {
    $sql_article_list = "SELECT * FROM article ORDER BY article_id DESC";
}
$query_article_list = mysqli_query($mysqli, $sql_article_list);
?>
<div class="row">
    <div class="col">
        <div class="header__list d-flex space-between align-center">
            <h3 class="card-title" style="margin: 0;">Danh sách bài viết</h3>
            <div class="action_group">
                <a href="?action=article&query=article_add" class="button button-dark">Thêm bài viết</a>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="main-pane-top d-flex justify-center align-center">
                    <div class="input__search p-relative">
                        <form class="seaech-form" method="GET" action="">
                            <i class="icon-search p-absolute"></i>
                        <input type ="test" name ="search" class="form-control" placeholder="Tìm bài viết.."
                            value="<?= isset($_GET['search']) ? htmlspecialchars ($_GET['search']):'' ?>">
                        <input type="hidden"name="action" value="article">
                        <input type="hidden"name ="query" value="article_list">
                    </form>
                </div>
            </div>
            </div>
            <!-- bảng dữ liệu -->
                <div class="table-responsive">
                    <table class="table table-hover table-action">
                        <thead>
                            <tr>
                            <th></th>
                                <th><input type="checkbox" id="checkAll"></th>
                                <th></th>
                                <th>Ngày đăng</th>
                                <th>Tiêu đề bài viết</th>
                                <th>Trạng thái</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                $i = 0;
                                while ($row = mysqli_fetch_array($query_article_list)) {
                                    $i++;
                            ?>
                                <tr>
                                    <td>
                                        <a href="?action=article&query=article_edit&article_id=<?php echo $row['article_id'] ?>">
                                            <div class="icon-edit">
                                                <img class="w-100 h-100" src="images/icon-edit.png" alt="">
                                            </div>
                                        </a>
                                    </td>
                                    <td>
                                        <input type="checkbox" class="checkbox" onclick="testChecked(); getCheckedCheckboxes();" id="<?php echo $row['article_id'] ?>">
                                    </td>
                                    
                                    <td><img src="modules/blog/uploads/<?php echo $row['article_image'] ?>" alt=""></td>
                                    <td><?php echo $row['article_date'] ?></td>
                                    <td><?php echo $row['article_title'] ?></td>
                                    <td><?php echo format_article_status($row['article_status']) ?></td>
                                </tr>
                            <?php
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Nút xoá -->
<div class="dialog__control">
    <div class="control__box">
        <a href="#" class="button__control" id="btnDelete">Xóa</a>
    </div>
</div>

<!-- JavaScript xử lý checkbox -->
<script>
    var btnDelete = document.getElementById("btnDelete");
    var checkAll = document.getElementById("checkAll");
    var checkboxes = document.getElementsByClassName("checkbox");
    var dialogControl = document.querySelector('.dialog__control');
    // Thêm sự kiện click cho checkbox checkAll
    checkAll.addEventListener("click", function() {
        // Nếu checkbox checkAll được chọn
        if (checkAll.checked) {
            // Đặt thuộc tính "checked" cho tất cả các checkbox còn lại
            for (var i = 0; i < checkboxes.length; i++) {
                checkboxes[i].checked = true;
            }
        } else {
            // Bỏ thuộc tính "checked" cho tất cả các checkbox còn lại
            for (var i = 0; i < checkboxes.length; i++) {
                checkboxes[i].checked = false;
            }
        }
        testChecked();
        getCheckedCheckboxes();
    });

    console.log(checkboxes[0]);

    function testChecked() {
        var count = 0;
        for (let i = 0; i < checkboxes.length; i++) {
            if (checkboxes[i].checked) {
                count++;
                console.log(count);
            }
        }
        if (count > 0) {
            dialogControl.classList.add('active');
        } else {
            dialogControl.classList.remove('active');
            checkAll.checked = false;
        }
    }

    function getCheckedCheckboxes() {
        var checkeds = document.querySelectorAll('.checkbox:checked');
        var checkedIds = [];
        for (var i = 0; i < checkeds.length; i++) {
            checkedIds.push(checkeds[i].id);
        }
        btnDelete.href = "modules/blog/xuly.php?data="+ JSON.stringify(checkedIds);
    }

</script>