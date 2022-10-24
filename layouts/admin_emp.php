<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Админ Панель</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.8.2/dist/alpine.min.js" defer></script>
    <link href="../assets/style.css" rel="stylesheet">
</head>
<body>
<main class="flex-1 overflow-x-hidden overflow-y-auto bg-cyan-400">
    <div class="container mx-auto px-6 py-8">
        <h3 class="text-gray-700 text-3xl font-medium">Сотрудники</h3>

        <div class="mt-8">
            <a href="create.php" class="text-black font-bold">Добавить</a>
        </div>

        <div class="flex flex-col mt-8">
            <div class="-my-2 py-2 overflow-x-auto sm:-mx-6 sm:px-6 lg:-mx-8 lg:px-8">
                <div
                        class="align-middle inline-block min-w-full shadow overflow-hidden sm:rounded-lg border-b border-gray-200">
                    <table class="min-w-full">
                        <thead>
                        <tr>
                            <th class="px-6 py-3 border-b border-gray-200 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                                Имена сотрудников</th>
                            <th class="px-6 py-3 border-b border-gray-200 bg-gray-50"></th>
                        </tr>
                        </thead>
                        <tbody class="bg-white">
                        <?php
                        require_once '../db/db.php';
                        $check_emp = mysqli_query($db, "SELECT * FROM `employees`");
                        $employees = mysqli_fetch_all($check_emp);
                        foreach ($employees as $employee) {
                            ?>
                            <tr>
                                <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                    <div class="text-sm leading-5 text-gray-900"><?=$employee[1]?></div>
                                </td>

                                <td class="px-6 py-4 whitespace-no-wrap text-right border-b border-gray-200 text-sm leading-5 font-medium">
                                    <a href="update.php?id=<?=$employee[0]?>" class="text-indigo-600 hover:text-indigo-900">Изменить</a><br>
                                    <a href="../db/delete.php?id=<?=$employee[0]?>" class="text-red-600 hover:text-red-900">Удалить</a>
                                </td>
                            </tr>
                            <?php
                        }
                        ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</main>

<script src="/js/app.js"></script>
</body>
</html>
