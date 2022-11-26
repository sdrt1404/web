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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
            integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <title>Moscow Discpilines</title>
</head>
<body>

<?php include("app/include/header.php"); ?>
<section class="main-discp">
    <h1 class="content-heading">Дисциплины</h1>
    <div class="main-content-test">
        <ul class="list-sem">
        <h2 class="sem-heading">Семестр 1</h2>            
        <?php foreach ($posts as $post): //Каждому элемента массива posts присваивает переменную $post(перебор)?> 
            <?php if($post['semestr']==1): //Если первык семестр, то происходит такие то дейтсвтия?>
                <button class="btn-modal" data-path="popup"> <!-- Кнопка модального окна -->
                    <li style="background-color: 
                        <?php 
                            for($j=1; $j<=$countsub;$j++){
                                if ($post['subject']==$subs[$j-1]['name']):
                                    echo $subs[$j-1]['color'];
                                endif;} //Цикл фор для сравнения названий из двух таблиц при итерации, если совпадает, то с таблицы берется цвет, $j-1 т.к диапозон
                        ?>; 
                        height:
                        <?php 
                            echo $datalength*$post['ze'].'px' //datalength вывод, переменная указана в начале, зе берется с бд
                        ?>" 
                        class="sem-item">
                        <span style="font-size:
                            <?php 
                                if(strlen($post['subject'])>=55):
                                    echo 10 . 'px';
                                endif; //размер шрифта для вывода, т.к при 11 и больше элемент не влазит
                            ?>" 
                            class="sem-subj"><?php echo $post['subject'] //вывод элемента(название предмета)?>
                        </span>
                    </li>
                </button>
                <div class="modals">
                    <div class="modal-overlay">
                        <div class="modal modal--1" data-target="popup">
                            <p><b>Описание:</b></p>
                            <p><b>ЗЕ:<?php echo $post['ze']?></b><span></span></p>
                            <p><b>Специализация:<?php echo $post['spec']?></b><span></span></p>
                        </div>
                    </div>
                </div> <!--Выше само модальное окно и вывод информации в нем и так 8 раз для каждого семака -->
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        <ul class="list-sem">
            <h2 class="sem-heading">Семестр 2</h2>
            <?php foreach ($posts as $post): ?>
                <?php if($post['semestr']==2): ?>
                <button class="btn-modal" data-path="popup">
                <li style="background-color: 
                    <?php 
                        for($j=1; $j<=$countsub;$j++){
                            if ($post['subject']==$subs[$j-1]['name']):
                                echo $subs[$j-1]['color'];
                            endif;} ?>; 
                        height: 
                            <?php echo $datalength*$post['ze'].'px' ?>" 
                        class="sem-item">
                            <span style="font-size:
                                <?php 
                                    if(strlen($post['subject'])>=55):
                                        echo 10 . 'px';
                                    endif;
                                ?>" 
                                class="sem-subj"><?php echo $post['subject']?>
                            </span>
                        </li>                
                </button>
                <div class="modals">
                    <div class="modal-overlay">
                        <div class="modal modal--1" data-target="popup">
                            <p><b>Описание:</b></p>
                            <p><b>ЗЕ:<?php echo $post['ze']?></b><span></span></p>
                            <p><b>Специализация:<?php echo $post['spec']?></b><span></span></p>
                        </div>
                    </div>
                </div>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        <ul class="list-sem">
            <h2 class="sem-heading">Семестр 3</h2>
            <?php foreach ($posts as $post): ?>
                <?php if($post['semestr']==3): ?>
                    <button class="btn-modal" data-path="popup">
                    <li style="background-color: 
                    <?php 
                        for($j=1; $j<=$countsub;$j++){
                            if ($post['subject']==$subs[$j-1]['name']):
                                echo $subs[$j-1]['color'];
                            endif;} ?>; 
                        height: 
                            <?php echo $datalength*$post['ze'].'px' ?>" 
                        class="sem-item">
                            <span style="font-size:
                            <?php 
                                if(strlen($post['subject'])>=55):
                                    echo 10 . 'px';
                                endif;
                            ?>" 
                            class="sem-subj"><?php echo $post['subject']?>
                        </span>
                    </li>                
                </button>
                    <div class="modals">
                        <div class="modal-overlay">
                            <div class="modal modal--1" data-target="popup">
                                <p><b>Описание:</b></p>
                                <p><b>ЗЕ:<?php echo $post['ze']?></b><span></span></p>
                                <p><b>Специализация:<?php echo $post['spec']?></b><span></span></p>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        <ul class="list-sem">
            <h2 class="sem-heading">Семестр 4</h2>
            <?php foreach ($posts as $post): ?>
                <?php if($post['semestr']==4): ?>
                    <button class="btn-modal" data-path="popup">
                    <li style="background-color: 
                    <?php 
                        for($j=1; $j<=$countsub;$j++){
                            if ($post['subject']==$subs[$j-1]['name']):
                                echo $subs[$j-1]['color'];
                            endif;} ?>; 
                        height: 
                            <?php echo $datalength*$post['ze'].'px' ?>" 
                        class="sem-item">
                            <span style="font-size:
                                <?php 
                                    if(strlen($post['subject'])>=55):
                                        echo 10 . 'px';
                                    endif;
                                ?>" 
                            class="sem-subj"><?php echo $post['subject']?>
                        </span>
                    </li>                
                </button>
                <div class="modals">
                    <div class="modal-overlay">
                        <div class="modal modal--1" data-target="popup">
                            <p><b>Описание:</b></p>
                            <p><b>ЗЕ:<?php echo $post['ze']?></b><span></span></p>
                            <p><b>Специализация:<?php echo $post['spec']?></b><span></span></p>
                        </div>
                    </div>
                </div>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        <ul class="list-sem">
            <h2 class="sem-heading">Семестр 5</h2>
            <?php foreach ($posts as $post): ?>
                <?php if($post['semestr']==5): ?>
                    <button class="btn-modal" data-path="popup">
                    <li style="background-color: 
                    <?php 
                        for($j=1; $j<=$countsub;$j++){
                            if ($post['subject']==$subs[$j-1]['name']):
                                echo $subs[$j-1]['color'];
                            endif;} ?>; 
                        height: 
                            <?php echo $datalength*$post['ze'].'px' ?>" 
                        class="sem-item">
                            <span style="font-size:
                                <?php 
                                    if(strlen($post['subject'])>=55):
                                        echo 10 . 'px';
                                    endif;
                                ?>" 
                            class="sem-subj"><?php echo $post['subject']?>
                        </span>
                    </li>                
                </button>
                <div class="modals">
                    <div class="modal-overlay">
                        <div class="modal modal--1" data-target="popup">
                            <p><b>Описание:</b></p>
                            <p><b>ЗЕ:<?php echo $post['ze']?></b><span></span></p>
                            <p><b>Специализация:<?php echo $post['spec']?></b><span></span></p>
                        </div>
                    </div>
                </div>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        <ul class="list-sem">
            <h2 class="sem-heading">Семестр 6</h2>
            <?php foreach ($posts as $post): ?>
                <?php if($post['semestr']==6): ?>
                    
                    <button class="btn-modal" data-path="popup">
                    <li style="background-color: 
                    <?php 
                        for($j=1; $j<=$countsub;$j++){
                            if ($post['subject']==$subs[$j-1]['name']):
                                echo $subs[$j-1]['color'];
                            endif;} ?>; 
                        height: 
                            <?php echo $datalength*$post['ze'].'px' ?>" 
                        class="sem-item">
                            <span style="font-size:
                                <?php 
                                    if(strlen($post['subject'])>=55):
                                        echo 10 . 'px';
                                    endif;
                                ?>" 
                            class="sem-subj"><?php echo $post['subject']?>
                        </span>
                    </li>                
                </button>
                <div class="modals">
                    <div class="modal-overlay">
                        <div class="modal modal--1" data-target="popup">
                            <p><b>Описание:</b></p>
                            <p><b>ЗЕ:<?php echo $post['ze']?></b><span></span></p>
                            <p><b>Специализация:<?php echo $post['spec']?></b><span></span></p>
                        </div>
                    </div>
                </div>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        <ul class="list-sem">
            <h2 class="sem-heading">Семестр 7</h2>
            <?php foreach ($posts as $post): ?>
                <?php if($post['semestr']==7): ?>
                    <button class="btn-modal" data-path="popup">
                    <li style="background-color: 
                    <?php 
                        for($j=1; $j<=$countsub;$j++){
                            if ($post['subject']==$subs[$j-1]['name']):
                                echo $subs[$j-1]['color'];
                            endif;} ?>; 
                        height: 
                            <?php echo $datalength*$post['ze'].'px' ?>" 
                        class="sem-item">
                            <span style="font-size:
                                <?php 
                                    if(strlen($post['subject'])>=55):
                                        echo 10 . 'px';
                                    endif;
                                ?>" 
                            class="sem-subj"><?php echo $post['subject']?>
                        </span>
                    </li>                
                </button>
                <div class="modals">
                    <div class="modal-overlay">
                        <div class="modal modal--1" data-target="popup">
                            <p><b>Описание:</b></p>
                            <p><b>ЗЕ:<?php echo $post['ze']?></b><span></span></p>
                            <p><b>Специализация:<?php echo $post['spec']?></b><span></span></p>
                        </div>
                    </div>
                </div>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        <ul class="list-sem">
            <h2 class="sem-heading">Семестр 8</h2>
            <?php foreach ($posts as $post): ?>
                <?php if($post['semestr']==8): ?>
                    <button class="btn-modal" data-path="popup">
                    <li style="background-color: 
                    <?php 
                        for($j=1; $j<=$countsub;$j++){
                            if ($post['subject']==$subs[$j-1]['name']):
                                echo $subs[$j-1]['color'];
                            endif;} ?>; 
                        height: 
                            <?php echo $datalength*$post['ze'].'px' ?>" 
                        class="sem-item">
                            <span style="font-size:
                                <?php 
                                    if(strlen($post['subject'])>=55):
                                        echo 10 . 'px';
                                    endif;
                                ?>" 
                            class="sem-subj"><?php echo $post['subject']?>
                        </span>
                    </li>                
                </button>
                <div class="modals">
                    <div class="modal-overlay">
                        <div class="modal modal--1" data-target="popup">
                            <p><b>Описание:</b></p>
                            <p><b>ЗЕ:<?php echo $post['ze']?></b><span></span></p>
                            <p><b>Специализация:<?php echo $post['spec']?></b><span></span></p>
                        </div>
                    </div>
                </div>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
    </div>    
</section>
<script src="assets/js/script.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"></script>
</body>
</html>