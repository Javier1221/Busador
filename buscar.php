<html>
<head>
  <title>Prueba</title>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

  <!-- Latest compiled and minified JavaScript -->
  <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>-->
</head>
<body>


<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  	<center><h1>Buscador de cédulas</h1></center>
  	<form method="POST" action="buscar.php" >
  	<div class="form-group">
	    <label for="doc">cédula</label>
	    <input type="text" name="doc" class="form-control" id="doc">
	</div>
    <center><input type="submit" value="Enviar" class="btn btn-success" name="btn1"></center>

  </form>

  <?php
  	if(isset($_POST['btn1']))
  	{
			
  		include("conexion.php");

  		$doc=$_POST['doc'];

  		#$resultado = mysqli_query($connection,"SELECT * FROM estudiantes WHERE userid like '%$doc%'");
      $resultado = mysqli_query($connection,"SELECT * FROM estudiantes WHERE userid like '%$doc%'");
			while($consulta = mysqli_fetch_array($resultado)){
           echo $consulta['nombre'];
			}
      $resultado2 = mysqli_query($connection,"SELECT A.nombre,A.apellido,B.curso,B.duración  FROM estudiantes A ,materias B WHERE A.userid ='$doc' AND B.userid = '$doc'");
  		while($consulta = mysqli_fetch_array($resultado2)){
        ?>
           <H5><?php echo $consulta['curso'] ?>
           <?php echo $consulta['duración'] ?> </H5><br/>
      <?php
			}
      include("cerrar.php");
  	}



  ?>



  </div>
  <div class="col-md-4"></div>
</div>



  
  
</body>
</html>