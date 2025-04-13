<?php
date_default_timezone_set('Asia/Ho_Chi_Minh');
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
  
/*
$vnp_TmnCode = "MCG9RE1Q"; //Mã định danh merchant kết nối (Terminal Id)
$vnp_HashSecret = "BPZPZWGMUSPMKQAUFMWOYVLKTVYBBWLX"; //Secret key kiem tra toan ven data 
*/
// $vnp_TmnCode = "9691LLZZ"; //Mã định danh merchant kết nối (Terminal Id)
// $vnp_HashSecret = "0JICXK8AACYP66XU2Z9OBYKPZV3VBAVR"; //Secret key

$vnp_TmnCode = "B34TGE68"; //Mã định danh merchant kết nối (Terminal Id)
$vnp_HashSecret = "GKVMX6LCM4QYTNCG081NY5BWKW07X7T0"; //Secret key
$vnp_Url = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html"; //url thanh toan cua vnpay
$vnp_Returnurl = "http://localhost/vietson/index.php?page=thankiu"; // url nhan ket qua he thong nhan kq tu vnpay

$vnp_apiUrl = "http://sandbox.vnpayment.vn/merchant_webapi/merchant.html";
$apiUrl = "https://sandbox.vnpayment.vn/merchant_webapi/api/transaction";
//Config input format
//Expire
$startTime = date("YmdHis");
$expire = date('YmdHis',strtotime('+15 minutes',strtotime($startTime)));
