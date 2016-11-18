<?php
	echo '<body>';
		include('../vues/v_en_tete.php');
		echo'<div>';
			include('../vues/v_menu.php');
			echo'<div class="corp">
				Bienvenue sur notre site de comparatif.</br>
				voici les chiffres actuel du site:</br>'
				.$nb_ssd.' SSD enregistrées.
			</div>
		</div>';
		include('../vues/v_bas_page.php');
	echo'</body>';
?>