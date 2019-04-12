<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

    <?php
        require_once "../settings/settings.php"; // подключаем настройки
        // Обработка данных
        function rowInputRow($accArrowAll) {
            if ($accArrowAll->num_rows > 0) {
                echo "<table><tr><th>id</th><th>Имя</th><th>Пароль</th></tr>";
                while ($row = $accArrowAll->fetch_assoc()) {
                    echo "<tr><td>".$row["id"]."</td><td>".$row["name"]."</td><td>".$row["pass"]."</td></tr>";
                };
                echo  "</table>";
            } else {
                echo "БД пустая, нечего выводить...";
            };
        };
        function sayHello($checkRequest, $name, $pass) {
            if ($checkRequest->num_rows > 0) {
                while ($row = $checkRequest->fetch_assoc()) {
					if (sha1($pass) == $row["pass"]) {
						echo "Привет ".$name." здесь нужен редирект";
						header("refresh: 3; url=http://giper-recklama.portrethit.ru/");
					} else {
						echo "Данные с ошибкой.";
					};
					echo "<br>".$row["pass"]."<br>";
					echo sha1($pass);
				};
            };
        };

        // Подключение к БД
        $mysqli = new mysqli($serverHost, $serverName, $serverPass, $serverUser);
        $mysqli->query("SET NAMES 'utf8'");
        // Проверка подключения
        if ($mysqli->connect_error) {
            die("Ошибка подключения - ".$mysqli->connect_error);
        } else echo "Подключение успешно<br>------------------------<br>";

        // Получение данных
        $accArrowAll = $mysqli->query("SELECT * FROM usersGiperRecklama WHERE 1 LIMIT 30");
        rowInputRow($accArrowAll); // Вызов функции вывода всех пользователей
        echo "------------------------<br>";

        $name = htmlentities(mysqli_real_escape_string($mysqli, $_POST['name']));
        $pass = htmlentities(mysqli_real_escape_string($mysqli, $_POST['pass']));
        $checkRequest = $mysqli->query("SELECT * FROM `usersGiperRecklama` WHERE `name` = '".$name."'");
        // rowInputRow($checkRequest); // Вызов данных пользователя
        echo "------------------------<br>";
        sayHello($checkRequest, $name, $pass);

        // Закрытие соединения
        $mysqli->close();
    ?>

</body>
</html>