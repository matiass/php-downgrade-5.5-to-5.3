php-downgrade-5.5-to-5.3
========================
Este script además de permitirnos hacer un downgrade de PHP 5.5 a PHP 5.3. <br />
También nos habilitará hacer <br />
<i>sudo apt-get update</i> <br />
<i>sudo apt-get upgrade</i> <br />
sin que nos afecte a nuestra version de PHP. <br />
Para correr el script esto son los pasos a seguir: <br />
Descargar script: <i>downgrade.sh</i> <br /> 
Si es necesario hacer las modificaciones que se mencionan en Notas Desde otras version de PHP <br />
Agregarle permisos de ejecución: <br />
<i>chmod +x /path/to/downgrade.sh</i> <br />
Ejecutar: <br />
<i>/path/to/downgrade.sh</i> <br />
<h5>Notas Generales:</h5>
No ejecutar como root o con sudo <br />
En algún momento les va a pedir la contraseña, ahi deben ingresar la contraseña de su usuario.. <br />
El script esta realizado para quienes tienen Ubuntu 13.10 instalado o clones a Ubuntu 13.10, si tenes otra version o queres hacer un downgrade a otra version tienes que cambiar el nombre del repositorio en downgrade.sh <br />
<h5>Downgrade desde otra version de PHP:</h5>
Lo que necesitaremos saber es repositorio estamos utilizando para eso ejecutamos el siguiente comando: <br />
<i>sudo cat /etc/apt/sources.list</i>  <br />
<i>deb http://security.ubuntu.com/ubuntu saucy-security main restricted</i>(que nos mostrara algo así, lo que marcamos en negrita nos dira que debemos cambiar en nuestro downgrande.sh) <br />
Luego necesitamos saber a que repositorio tenemos que ir para poder instalar la version de PHP que deseamos. Lo podemos encontrar en el siguiente link: <br />
<a href="http://packages.ubuntu.com/search?keywords=php5" target="_blank">http://packages.ubuntu.com/search?keywords=php5</a> <br />
Por ultimo modificar la linea 9 de downgrade.php <br />
<i>sudo sed -i.bak "s/saucy/precise/g" /etc/apt/sources.list </i><br />
Y la linea 16 por el nombre de repositorio que corresponda <br />
<i>sudo sed -i "s/precise/saucy/g" /etc/apt/sources.list</i>