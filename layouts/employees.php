<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../assets/style.css">
    <title>Сотрудники</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-orange-300 text-black">
<section class="container xl:mx-auto pt-5">
    <?php
    require_once '../db/db.php';
    $check_emp = mysqli_query($db, "SELECT * FROM `employees`");
    $employees = mysqli_fetch_all($check_emp);
    ?>
    <table class="">
        <tr>
            <th class="border border-black">ID_Employees</th>
            <th class="border border-black">Full Name</th>
            <th class="border border-black">Age</th>
            <th class="border border-black">Gender</th>
            <th class="border border-black">Adress</th>
            <th class="border border-black">Phone Number</th>
            <th class="border border-black">Pasport Data</th>
            <th class="border border-black">ID_Post</th>
        </tr>
        <?php
        foreach ($employees as $employee) {
            ?>
            <tr>
                <td class="border border-black"><?=$employee[0]?></td>
                <td class="border border-black"><?=$employee[1]?></td>
                <td class="border border-black"><?=$employee[2]?></td>
                <td class="border border-black"><?=$employee[3]?></td>
                <td class="border border-black"><?=$employee[4]?></td>
                <td class="border border-black"><?=$employee[5]?></td>
                <td class="border border-black"><?=$employee[6]?></td>
                <td class="border border-black"><?=$employee[7]?></td>
            </tr>
            <?php
        }
        ?>
    </table>
</section>
</body>
</html>
