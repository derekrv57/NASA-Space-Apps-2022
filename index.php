<?php 
	if ($_GET['date']==null) {
		header('Location: php/last.php');
		exit(0);
	}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<div>
		<form method="GET">
			<input type="date" name="date" value=<?php echo $_GET['date']; ?>>
			<input type="submit" value="Load">
		</form>
	</div>
	<canvas class="dots" id="canvas">Your browser does not support canvas.</canvas>
</body>
</html>
<script type="text/javascript" src=<?php echo '"js/canvas.php?date='.$_GET['date'].'"'; ?>></script>
