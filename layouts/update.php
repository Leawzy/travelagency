<?php
require_once '../db/db.php';
$employees_id = $_GET['id'];
$check_emp = mysqli_query($db, "SELECT * FROM `Employees` WHERE `ID_Employees` = '$employees_id'");
$employees = mysqli_fetch_assoc($check_emp);
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo "Номер сотрудника {$employees_id}" ?></title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <section class="dark:bg-white p-5 text-black">
        <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto lg:py-0">
            <div class="w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:border-black">
                <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                    <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-black text-center">
                        Обновить сотрудника
                    </h1>
                    <form action="../db/update.php?id=<?=$employees_id?>" method="post" class="space-y-4 md:space-y-6">
                        <label for="fullname" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Full Name</label>
                        <input value="<?=$employees["FullName"]?>" type="text" name="fullname" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <label for="age" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Age</label>
                        <input value="<?=$employees["Age"]?>" type="number" name="age" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <label for="gender" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Gender</label>
                        <input value="<?=$employees["Gender"]?>" type="text" name="gender" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <label for="adress"class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Adress</label>
                        <input value="<?=$employees["Adress"]?>" type="text" name="adress" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <label for="phonenumber" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Phone Number</label>
                        <input value="<?=$employees["PhoneNumber"]?>" type="number" name="phonenumber" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <label for="pasportdata" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Pasport Data</label>
                        <input value="<?=$employees["PasportData"]?>" type="number" name="pasportdata" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <label for="idpost" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">ID Post</label>
                        <input value="<?=$employees["ID_Post"]?>" type="number" name="idpost" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <button type="submit" class="w-full text-white bg-blue-600 hover:bg-blue-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-emerald-500 dark:hover:bg-emerald-600 dark:focus:ring-primary-800">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>
</html>