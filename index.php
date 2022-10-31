<?php
    include "path.php";
    include "app/database/db.php";

    $posts = selectAll('subjects');
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

<div class="container">
    <div class="content row">
        <!-- Main Content -->
        <div class="main-content col-12">
            <h2>Дисциплины</h2>
            <ul class="post-list">
            <?php foreach ($posts as $post): ?>
                <button class="btn-modal" data-path="popup">
                    <li class="post-item">
                        <?=$post['name']?>
                    </li>
                </button>
                <div class="modals">
                    <div class="modal-overlay">
                        <div class="modal modal--1" data-target="popup">
                            <b>Описание:</b><p><?=$post['description']?></p>
                            <p><b>Тип:</b><span><?=$post['name_type']?></span></p>
                            <p><b>Специализация:</b><span><?=$post['specialization']?></span></p>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
            </ul>
        </div>
    </div>
</div>
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