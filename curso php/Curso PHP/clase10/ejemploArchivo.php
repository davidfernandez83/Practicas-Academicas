<?PHP

//Obtenemos el indicador del archivo
$indicador = fopen ( "recursos/usuarios.txt" , "r" ) ;

//Comprobamos que el archivo existe
if ( $indicador )
{
	//Mientras siga quedando texto, imprimimos en pantalla
	while ( ! feof ( $indicador ) )
	{
	//Imprimimos
	echo fgets ( $indicador)."<br>";
	}
} 
fclose ($indicador);

//Obtenemos el indicador del archivo
$indicador = fopen ( "recursos/usuarios.txt" , "a" ) ;

fwrite($indicador,"manuel,manu33");

//Comprobamos que el archivo existe
if ( $indicador )
{
	//Mientras siga quedando texto, imprimimos en pantalla
	while ( ! feof ( $indicador ) )
	{
	//Imprimimos
	echo fgets ( $indicador)."<br>";
	}
} 
fclose ($indicador);


?>