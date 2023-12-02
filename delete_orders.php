<?php
include("connection/connect.php"); // kết nối đến cơ sở dữ liệu
error_reporting(0);
session_start();

$orderID = $_GET['order_del'];

// Xóa từ bảng order_details
mysqli_query($db, "DELETE FROM orders_details WHERE Order_id = '".$orderID."'");

// Xóa từ bảng users_orders
mysqli_query($db, "DELETE FROM users_orders WHERE o_id = '".$orderID."'");

header("location: your_orders.php");
?>