<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Document</title>
	
    <link rel="stylesheet"  href="css/estilos.css">

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
</head>
<body>
	
	<div class="container well">
		<div class="row">
			<div class="col-xs-12"><h2>Registrar Cliente</h2></div>
		</div>
		<br /><br />

		<form  class="form-horizontal">
			
				<div class="form-group">
						<label class="col-sm-2 control-label" for="formGroup">Nombre</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="formGroup">
						</div>
				</div>
				<div class="form-group">
						<label class="col-sm-2 control-label" for="formGroup">Apellidos</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="formGroup">

						</div>
				</div>
				<div class="form-group">
						<label class="col-sm-2 control-label" for="formGroup">DNI</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="formGroup">

						</div>
				</div>
				<div class="form-group">
						<label class="col-sm-2 control-label" for="formGroup">Sexo</label>
						<div class="col-sm-4">
							
							<label class="radio-inline">
								<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" checked>Masculino

							</label>
							<label class="radio-inline">
								<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2" checked>Femenino

							</label>
							</div>
						</div>
						<br />
							<div class="form-group">
								<label for="formGroup" class="col-sm-2 control-label"></label>
								<div class="col-sm-4">
									<button type="submit" class="btn btn-succes btn-lg"><span class="glypicon glypicon-floppy-saved"></span>Guardar</button>
									<button type="button" class="btn btn-danger btn-lg"><span class="glypicon glypicon-remove-circle"></span>Cancelar</button>	

								</div>


							</div>
				</div>
		</form>
	</div>






	<script src="jquery/jquery-1.11.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <script>
    		$('.carousel').carousel({
    				interval:2000,
    				pause:"hover"

    		});
    </script>

</body>
</html>