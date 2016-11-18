<?php
	include("../models/m_ssd.php");
	$nb_ssd=m_ssd::nombre_ssd();
	include("../vues/v_generique.php");
	echo '<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="../../js/ssd.js"></script>';
?>