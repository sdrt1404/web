<?php
    include "path.php";
    include "app/database/db.php";
    $posts = selectAll('specsub'); //С БД берет ввиде массива все элементы таблицы specsub
    $subs = selectAll('subjects'); //С БД берет ввиде массива все элементы таблицы subject
    //Проверить можно написав tt($posts) или tt($subs) строчкой ниже
    $countsub = count($subs); //считает количество предметов в БД, т.к ИД != их количество
    $datalength = 25; //Длина объекта, ниже умножение в пункте style
    $sem = [];
    foreach($posts as $key => $post){
        $sem[$key] = $post['semestr'];
    }
    unset($key);
    $maxsem = max($sem);
    // tt($posts);
?>

<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/media.css">
        <link type="Image/x-icon" href="/assets/img/favicon.ico" rel="icon">
		<title>Moscow Discpilines</title>
	</head>
<body>

<header class="header">
    <div class="container header__container">
        <a href="#" class="header__link"><img src="../../assets/img/logo.png" alt="Логотип Московского Политехнического университета" class="logo"><img src="../../assets/img/logo_min.png" alt="Логотип Московского Политехнического университета" class="logo_min"></a>
        <nav class="menu">
            <h2 class="header__title">Карта дисциплин</h2>
            <a href="index.php" class="menu__link">На главную</a>
        </nav>
    </div>
</header>
