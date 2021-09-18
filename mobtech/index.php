<?php

include "connect.php" ;
// $cat = $_POST['cat'] ; 
 $sql  = "SELECT * FROM mudassir";// WHERE cat_id = ?  " ;  
 $stmt = $con->prepare($sql);
 $stmt->execute();//(array($cat)) ; 
 $mobiles = $stmt->fetchAll(PDO::FETCH_ASSOC) ; 

 echo json_encode($mobiles) ; 
