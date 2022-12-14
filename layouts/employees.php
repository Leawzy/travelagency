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
    <h3 class="text-black text-3xl font-medium">Сотрудники</h3>
    <table class="">
        <div class="mt-8 mb-8">
            <a href="create.php" class="text-black font-bold hover:text-indigo-600">Создать</a>
        </div>
        <tr>
            <th class="border border-black">ID_Employees</th>
            <th class="border border-black">Full Name</th>
            <th class="border border-black">Age</th>
            <th class="border border-black">Gender</th>
            <th class="border border-black">Adress</th>
            <th class="border border-black">Phone Number</th>
            <th class="border border-black">Pasport Data</th>
            <th class="border border-black">ID_Post</th>
            <th class="border border-black">Действие</th>
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
                <td class="border border-black">
                    <a href="update.php?id=<?=$employee[0]?>" class="hover:text-indigo-600">Изменить</a><br>
                    <a href="../db/delete.php?id=<?=$employee[0]?>" class="text-red-600 hover:text-red-900">Удалить</a>
                </td>
            </tr>
            <?php
        }
        ?>
    </table>
</section>
</body>
</html>
