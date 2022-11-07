<?php
    include "path.php";
    include "app/database/db.php";

    $posts = selectAll('specsub');
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
<!-- 
<div class="container">
    <div class="content row"> -->
        <!-- Main Content -->
        <!-- <div class="main-content col-12">
            <h2>Дисциплины</h2>
            <ul class="post-list">
                <button class="btn-modal" data-path="popup">
                    <li class="post-item">
                    </li>
                </button>
                <div class="modals">
                    <div class="modal-overlay">
                        <div class="modal modal--1" data-target="popup">
                            <b>Описание:</b><p></p>
                            <p><b>Тип:</b><span></span></p>
                            <p><b>Специализация:</b><span></span></p>
                        </div>
                    </div>
                </div>
            </ul>
        </div>
    </div>
</div> -->

<section class="main-discp">
    <h1 class="content-heading">Дисциплины</h1>
    <div class="main-content-test">
        <ul class="list-sem">
        <h2 class="sem-heading">Семестр 1</h2>            
        <?php foreach ($posts as $post): ?>
            <?php if($post['semestr']==1): ?>
                <li class="sem-item"><?php echo $post['subject']?></li>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        <ul class="list-sem">
            <h2 class="sem-heading">Семестр 2</h2>
            <?php foreach ($posts as $post): ?>
                <?php if($post['semestr']==2): ?>
                    <li class="sem-item"><?php echo $post['subject']?></li>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        <ul class="list-sem">
            <h2 class="sem-heading">Семестр 3</h2>
            <?php foreach ($posts as $post): ?>
                <?php if($post['semestr']==3): ?>
                    <li class="sem-item"><?php echo $post['subject']?></li>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        <ul class="list-sem">
            <h2 class="sem-heading">Семестр 4</h2>
            <?php foreach ($posts as $post): ?>
                <?php if($post['semestr']==4): ?>
                    <li class="sem-item"><?php echo $post['subject']?></li>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        <ul class="list-sem">
            <h2 class="sem-heading">Семестр 5</h2>
            <?php foreach ($posts as $post): ?>
                <?php if($post['semestr']==5): ?>
                    <li class="sem-item"><?php echo $post['subject']?></li>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        <ul class="list-sem">
            <h2 class="sem-heading">Семестр 6</h2>
            <?php foreach ($posts as $post): ?>
                <?php if($post['semestr']==6): ?>
                    <li class="sem-item"><?php echo $post['subject']?></li>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        <ul class="list-sem">
            <h2 class="sem-heading">Семестр 7</h2>
            <?php foreach ($posts as $post): ?>
                <?php if($post['semestr']==7): ?>
                    <li class="sem-item"><?php echo $post['subject']?></li>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        <ul class="list-sem">
            <h2 class="sem-heading">Семестр 8</h2>
            <?php foreach ($posts as $post): ?>
                <?php if($post['semestr']==8): ?>
                    <li class="sem-item"><?php echo $post['subject']?></li>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
    </div>    
</section>
<!--                <div class="post row">-->
<!--                    <div class="post_text col-12 col-md-8">-->
<!--                        <h3>-->
<!--                        </h3>-->
<!--                        <p class="preview-text">-->
<!--                            --><?//=mb_substr($post['content'], 0, 55, 'UTF-8'). '...'  ?>
<!--                        </p>-->
<!--                    </div>-->
<!--                </div>-->
<script src="assets/js/script.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"></script>
</body>
</html>