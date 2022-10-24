<?php
$db = mysqli_connect('127.0.0.1', 'root', '', 'travelagency');
if (!$db) {
    die('Error connect to DB');
}