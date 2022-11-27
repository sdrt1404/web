<?php include("app/include/header.php"); ?>
<main class="disciplines">
  <h1 class="disciplines__title">Перечень дисциплин для 'Название специальности'</h1>
	<div class="container">
		<?php for($i=1; $i<=8;$i++):?>
			<ul class="semestr">
				<h2 class="semestr__title">Семестр <?php echo $i ?></h2>            
				<?php foreach ($posts as $post): //Каждому элемента массива posts присваивает переменную $post(перебор)?> 
				<?php if($post['semestr']==$i): //Если первык семестр, то происходит такие то дейтсвтия?>
				<button class="btn-modal" data-path="popup"> <!-- Кнопка модального окна -->
					<li style="background-color: <?php for($j=1; $j<=$countsub;$j++){
											if ($post['subject']==$subs[$j-1]['name']):
													echo $subs[$j-1]['color'];
											endif;} //Цикл фор для сравнения названий из двух таблиц при итерации, если совпадает, то с таблицы берется цвет, $j-1 т.к диапозон
							?>;" 
							class="semestr__item" data-length="<?php echo $post['ze'] // вывод З.Е?>">
							<span class="semestr__subject"><?php echo $post['subject'] //вывод элемента(название предмета)?> </span>
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
		<?php endfor; ?>
	</div>    
</main>

<?php include("app/include/footer.php"); ?>