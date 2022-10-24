<?php
require_once 'db.php';
$employees_id = $_GET['id'];

$fullname = $_POST['fullname'];
$age = $_POST['age'];
$gender = $_POST['gender'];
$adress = $_POST['adress'];
$phonenumber = $_POST['phonenumber'];
$pasportdata = $_POST['pasportdata'];
$idpost = $_POST['idpost'];

mysqli_query($db, "UPDATE `Employees` SET `FullName` = '$fullname', `Age` = '$age', `Gender` = '$gender',
                     `Adress` = '$adress', `PhoneNumber` = '$phonenumber', `PasportData` = '$pasportdata', `ID_Post` = '$idpost'
                     WHERE `ID_Employees` = '$employees_id'");

header('Location: ../layouts/admin_emp.php');

