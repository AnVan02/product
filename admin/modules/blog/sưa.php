<?php
$sql_article_edit = "SELECT * FROM article WHERE article_id = '$_GET[article_id]' LIMIT 1";
$query_article_edit = mysqli_query($mysqli, $sql_article_edit);

$sql_comment = "SELECT * FROM comment WHERE article_id = '$_GET[article_id]' ORDER BY comment_id DESC";
$query_comment = mysqli_query($mysqli, $sql_comment);

?>
<div class="row" style="margin-bottom: 10px;">
    <div class="col d-flex" style="justify-content: space-between; align-items: flex-end;">
        <h3>
            Sửa bài viết
        </h3>
        <a href="index.php?action=article&query=article_list" class="btn btn-outline-dark btn-fw">
            <i class="mdi mdi-reply"></i>
            Quay lại
        </a>
    </div>
</div>
<?php while ($row = mysqli_fetch_array($query_article_edit)) {
?>
    <form method="POST" action="modules/blog/xuly.php?article_id=<?php echo $row['article_id'] ?>" enctype="multipart/form-data">
        <div class="row">
            <div class="col-lg-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="input-item form-group">
                            <label for="author" class="d-block">Tên tác giả</label>
                            <input id=author type="text" name="article_author" class="d-block form-control" value="<?php echo $row['article_author'] ?>" placeholder="">
                        </div>
                        <div class="input-item form-group">
                            <label for="article_date" class="d-block">Ngày đăng bài</label>
                            <input type="date" name="article_date" class="form-control" value="<?php echo date('Y-m-d', strtotime($row['article_date'])) ?>">
                        </div>
                        
                        <div class="input-item form-group">
                            <label for="title" class="d-block">Tóm tắt bài viết</label>
                            <textarea name="article_content"><?php echo $row['article_content'] ?></textarea>
                        </div>

                        <div class="input-item form-group">
                            <label for="title" class="d-block">Nội dung bài viết </label>
                            <textarea name="article_summary"><?php echo $row['article_summary'] ?></textarea>
                        </div>
                        
                        <button type="submit" name="article_edit" class="btn btn-primary btn-icon-text mg-t-16">
                            <i class="ti-file btn-icon-prepend"></i>
                            Lưu lại
                        </button>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="over-flow-hidden">
                            <div class="main-pane-top">
                            </div>
                            <div class="input-item form-group">
                                <label for="article_status" class="d-block">Trang thái</label>
                                <select name="article_status" id="article_status" class="form-control">
                                    <option value="0" <?php if ($row['article_status'] == 0) {
                                                            echo "selected";
                                                        } ?>>Bản nháp</option>
                                    <option value="1" <?php if ($row['article_status'] == 1) {
                                                            echo "selected";
                                                        } ?>>Xuất bản</option>
                                </select>
                            </div>
                            <div class="input-item form-group">
                                <label for="image" class="">Image</label>
                                <img src="modules/blog/uploads/<?php echo $row['article_image'] ?>" class="article__image w-100 h-100" style="width: 50px; height: 50px;" alt="image">
                                <input type="file" name="article_image" value="<?php echo $row['article_image'] ?>">
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
<?php
}
?>
<div class="dialog__control">
    <div class="control__box">
        <a href="#" class="button__control" id="btnAccept">Duyệt</a>
        <a href="#" class="button__control btn__wanning" id="btnDelete">Xóa</a>
    </div>
</div>


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

<script>
     $(document).ready(function() {
            $('.summernote').summernote({
                height: 350,
                minHeight: null,
                maxHeight: null,
                focus: false,
                toolbar: [
                    ['style', ['bold', 'italic', 'underline', 'clear']],
                    ['font', ['fontname', 'fontsize', 'bold', 'italic', 'underline', 'strikethrough', 'superscript', 'subscript', 'clear']],
                    ['fontsize', ['fontsize']],
                    ['color', ['color']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['height', ['height']],
                    ['table', ['table']],
                    ['insert', ['link', 'picture', 'video','hr']],
                    ['view', ['fullscreen', 'codeview','undo','help']],
                    ['history', ['undo', 'redo']] // Thêm nhóm "history" với undo và redo
                ],
                fontName: ['Arial','Arial Black','Comic Sans MS', 'Courier New', 'Helvetice','Imapact', 'Times New Roman'],
                fontSizes:['8','9','10','11','12','14','16','18','20','24','36'],

                callbacks:{
                    onImageUpload: function (file){
                        uplaodFile (file [0], this, image)
                    }
                    onImageUpload: function (file){
                        uploadFile(file[0],this , video)
                    }
                }
            });
        });
    
        var btnAccept = document.getElementById("btnAccept");
        var btnDelete = document.getElementById("btnDelete");
        var checkAll = document.getElementById("checkAll");
        var checkboxes = document.getElementsByClassName("checkbox");
        var dialogControl = document.querySelector('.dialog__control');

        if (checkAll) {
            checkAll.addEventListener("click", function() {
                if (checkAll.checked) {
                    for (var i = 0; i < checkboxes.length; i++) {
                        checkboxes[i].checked = true;
                    }
                } else {
                    for (var i = 0; i < checkboxes.length; i++) {
                        checkboxes[i].checked = false;
                    }
                }
                testChecked();
                getCheckedCheckboxes();
            });
        }
        function testChecked() {
            var count = 0;
            for (let i = 0; i < checkboxes.length; i++) {
                if (checkboxes[i].checked) {
                    count++;
                }
            }
            if (count > 0) {
                dialogControl?.classList.add('active');
            } else {
                dialogControl?.classList.remove('active');
                if (checkAll) checkAll.checked = false;
            }
        }

        function getCheckedCheckboxes() {
            var checkeds = document.querySelectorAll('.checkbox:checked');
            var checkedComment = [];
            for (var i = 0; i < checkeds.length; i++) {
                checkedComment.push(checkeds[i].id);
            }
            if (btnAccept) {
                btnAccept.href = "modules/blog/xuly.php?&article_id=<?php echo $_GET['article_id'] ?>&acceptcomment=1&data="+ JSON.stringify(checkedComment);
            }
            if(btnDelete){
                btnDelete.href = "modules/blog/xuly.php?&article_id=<?php echo $_GET['article_id'] ?>&acceptcomment=1&data="+JSON.stringify(checkedComment);
            }
        }
</script>


