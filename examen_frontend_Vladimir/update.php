<?php 
include_once('header.php'); 

$curl = curl_init();
curl_setopt($curl, CURLOPT_URL,  $route.'/'.$_GET['id']);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($curl, CURLOPT_HTTPGET,true);
curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($curl, CURLOPT_HEADER, 0);
curl_setopt($curl, CURLOPT_POST, false);
$data = curl_exec($curl); 
$err = curl_error($curl); 
curl_close($curl);

if ($err) {
	echo "cURL Error #:" . $err;
    exit();
}

$row = json_decode($data);
?>
<form action="routes.php" class="row g-3 mt-5" method="POST">
    <div class="col-12 col-md-3">
        <label for="name" class="form-label">Nombre</label>
        <input type="text" class="form-control" name="name" id="name" value="<?= $row->name ?>" required>
    </div>
    <div class="col-12  col-md-3">
        <label for="email" class="form-label">Email</label>
        <input type="email" class="form-control" name="email" id="email" value="<?= $row->email ?>" required>
    </div>
    <div class="col-12 col-md-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" name="password" id="password" value="<?= $row->password ?>" required>
    </div>
    <div class="col-12 col-md-3">
        <label for="fecha_nacimiento" class="form-label">Fecha Nacimiento</label>
        <input type="date" class="form-control" name="fecha_nacimiento" id="fecha_nacimiento" value="<?= date("Y-m-d", strtotime($row->fecha_nacimiento)) ?>" required>
    </div>
    <div class="col-12 col-md-9">
        <label for="direccion" class="form-label">Dirección</label>
        <input type="text" class="form-control" name="direccion" id="direccion" value="<?= $row->direccion ?>" required>
    </div>
    <div class="col-12 col-md-3">
        <label for="telefono" class="form-label">Telefono</label>
        <input type="text" class="form-control" name="telefono" id="telefono" maxlength="10" value="<?= $row->telefono ?>" required>
    </div>
    <input type="hidden" name="id_usuario" value="<?= $row->id_usuario ?>">
    <input type="hidden" name="action" value="update">
    <div class="col-12">
        <button type="submit" class="btn btn-primary">Modificar</button>
    </div>
</form>
<?php include_once('footer.php'); ?>