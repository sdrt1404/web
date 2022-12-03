<?php include("app/include/header.php"); ?>
<main class="disciplines">
<h1 class="disciplines__title">Перечень дисциплин для <?php echo $post['spec'] ?></h1>
	<div class="container">
		<?php for($i=1; $i<=$maxsem;$i++):?>
			<ul class="semestr">
				<h2 class="semestr__title">Семестр <?php echo $i ?></h2>            
				<?php foreach ($posts as $post): //Каждому элемента массива posts присваивает переменную $post(перебор)?> 
				<?php if($post['semestr']==$i): //Если первык семестр, то происходит такие то дейтсвтия?>
				<button class="btn-modal" data-path="popup-<?php echo $post['id']?>"> <!-- Кнопка модального окна -->
					<li style="background-color: <?php for($j=1; $j<=$countsub;$j++){
											if ($post['subject']==$subs[$j-1]['name']):
													echo $subs[$j-1]['color'];
											endif;} //Цикл фор для сравнения названий из двух таблиц при итерации, если совпадает, то с таблицы берется цвет, $j-1 т.к диапозон
							?>;" 
							class="semestr__item" data-length="<?php echo $post['ze'] // вывод З.Е?>">
							<span class="semestr__subject"><?php echo $post['subject'] //вывод элемента(название предмета)?> </span>
					</li>
				</button>
				<?php endif; ?>
				<?php endforeach; ?>
			</ul>
		<?php endfor; ?>
		<div class="modals">
			<div class="modal-overlay">
				<?php foreach($posts as $post) {
					echo '<div class="modal modal--'.$post['id'] .'"'.'data-target="popup-' . $post['id'].'"';
					for($j=1; $j<=$countsub;$j++){
						if ($post['subject']==$subs[$j-1]['name']):
							echo '<p><b>Описание:</b>' . $subs[$j-1]['description'] . '</p>';
							echo '<p><b>ЗЕ:</b>' . $post['ze'] . '</p>';
							echo '<p><b>Специализация:</b>'. $subs[$j-1]['name_type'] . '</p>';
						endif;
					}
					echo '</div>';
					}
				?>
			</div>
		</div>
	</div>    
</main>

<script src="assets/js/script.js"></script>
<?php include("app/include/footer.php"); ?>