<?php
    include "path.php";
    include "app/database/db.php";
    $posts = selectAll('specsub'); //С БД берет ввиде массива все элементы таблицы specsub
    $subs = selectAll('subjects'); //С БД берет ввиде массива все элементы таблицы subject
    //Проверить можно написав tt($posts) или tt($subs) строчкой ниже
    $countsub = count($subs); //считает количество предметов в БД, т.к ИД != их количество
    $datalength = 25; //Длина объекта, ниже умножение в пункте style
?>

<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="assets/css/style.css">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<title>Moscow Discpilines</title>
	</head>
<body>

<header class="header">
    <div class="container header__container">
        <a href="#" class="header__link"><img src="../../assets/img/logo.png" alt="Логотип Московского Политехнического университета" class="logo"></a>
        <h2 class="header__title">Карта дисциплин</h2>
    </div>
</header>
