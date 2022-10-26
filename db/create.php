<?php
require_once 'db.php';

$fullname = $_POST['fullname'];
$age = $_POST['age'];
$gender = $_POST['gender'];
$adress = $_POST['adress'];
$phonenumber = $_POST['phonenumber'];
$pasportdata = $_POST['pasportdata'];
$idpost = $_POST['idpost'];

mysqli_query($db, "INSERT INTO `Employees` (`FullName`, `Age`, `Gender`, `Adress`, `PhoneNumber`,
                       `PasportData`, `ID_Post`) VALUES ('$fullname', 
                       '$age', '$gender', '$adress', '$phonenumber', '$pasportdata', '$idpost')");

header('Location: ../layouts/employees.php');