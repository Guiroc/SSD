<?php
	include("../models/m_ssd.php");
	$lesssd=m_ssd::select_ssd();
	$min=m_ssd::min_prix();
	$max=m_ssd::max_prix();
	$prix_go=m_ssd::prix_go();
	$note=m_ssd::note();
	$qualite_prix=m_ssd::qualite_prix();
	include ("../vues/v_ssd.php");
	
?>