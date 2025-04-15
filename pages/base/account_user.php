<?php 
$account_id = $_SESSION ['account_id'];
$sql_account ="SELECT * FROM customer WHERE account_id ='".$account_id ."'";
$query_account=mysqli_query($mysqli,$sql_account);

?>
<div class="my-account__content">
    <h2 class="my_account_title d-flex space-between h3">
        Thêm tài khoản 
    </h2>
    <from action="pages/handl/product-filter.php" method="POST">
                <div class="card-body">
                    <form action="" method="POST">
                        <?php echo form_success('account'); ?>
                        <?php echo form_error('account'); ?>

                        <div class="form-group">
                            <label for="fullname">Tên tài khoản</label>
                            <input class="form-control" type="text" name="fullname" id="fullname" value="<?php echo set_value('fullname'); ?>" placeholder="Họ và Tên">
                            <?php echo form_error('fullname'); ?>
                        </div>

                        <div class="form-group">
                            <label for="username">Username</label>
                            <input class="form-control" type="text" name="username" id="username" value="<?php echo set_value('username'); ?>" placeholder="Tên tài khoản">
                            <?php echo form_error('username'); ?>
                        </div>

                        <div class="form-group">
                            <label for="email">Email</label>
                            <input class="form-control" type="text" name="email" id="email" value="<?php echo set_value('email'); ?>" placeholder="Email">
                            <?php echo form_error('email'); ?>
                        </div>

                        <div class="form-group">
                            <label for="password">Mật khẩu</label>
                            <input class="form-control" type="password" name="password" id="password" placeholder="Mật khẩu">
                            <?php echo form_error('password'); ?>
                        </div>

                        <div class="form-group">
                            <label for="password">Nhập lại mật khẩu</label>
                            <input class="form-control"type="password" name="password" id="password" placeholder="Nhập lại mật khẩu">
                        </div>
                        
                        <button type="submit" class="btn btn-primary" name="btn_add">Thêm mới</button>
                        
                    </form>
                </div>
            <?php
        
            ?>
        </div>
    
    <button type="submit" name="info_change" class="btn btn__solid">Thêm mới</button>
    <button type="submit" name="info_change" class="btn btn__solid">Sửa 

    </form>
</div>