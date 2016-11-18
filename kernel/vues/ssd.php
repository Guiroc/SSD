<?php
	echo '<head>
		<meta charset="utf-8"/>
		<link type="text/css" rel="stylesheet" href="css/generique.css"/>
		<link type="text/css" rel="stylesheet" href="css/en_tete.css"/>
		<link type="text/css" rel="stylesheet" href="css/menu.css"/>
		<link type="text/css" rel="stylesheet" href="css/acceuil.css"/>
		<link type="text/css" rel="stylesheet" href="css/bas_page.css"/>
		<title>Acceuil</title>
	</head>
	<body>';
		include('kernel/vues/en_tete.php');
		echo'<div>';
			include('kernel/vues/menu.php');
			echo'<div class="corp">
				Bienvenue sur notre site de comparatif.
				voici les chiffres actuel du site:
				
			</div>
		</div>';
		include('kernel/vues/bas_page.php');
	echo'</body>';
?>