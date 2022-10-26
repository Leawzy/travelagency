<?php
require_once 'db.php';

$employees_id = $_GET['id'];

mysqli_query($db,"DELETE FROM `Employees` WHERE `ID_Employees` = '$employees_id'");

header('Location: ../layouts/employees.php');