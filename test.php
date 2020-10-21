<?php

$array=["en","de","y","sobre", "hasta"];

$cadena = "Hoteles en Taranda en y en de hasta ";
for($i=0; $i<count($array); $i++){
$resultado = str_replace(" ".$array[$i]." ", " ", $cadena);
$cadena = $resultado;
}

echo $cadena;


 
