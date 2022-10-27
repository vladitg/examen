<?php include_once('header.php'); ?>
<form action="routes.php" class="row g-3 mt-5" method="POST">
    <div class="col-12 col-md-3">
        <label for="name" class="form-label">Nombre</label>
        <input type="text" class="form-control" name="name" id="name" value="" required>
    </div>
    <div class="col-12  col-md-3">
        <label for="email" class="form-label">Email</label>
        <input type="email" class="form-control" name="email" id="email" value="" required>
    </div>
    <div class="col-12 col-md-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" name="password" id="password" value="" required>
    </div>
    <div class="col-12 col-md-3">
        <label for="fecha_nacimiento" class="form-label">Fecha Nacimiento</label>
        <input type="date" class="form-control" name="fecha_nacimiento" id="fecha_nacimiento" value="" required>
    </div>
    <div class="col-12 col-md-9">
        <label for="direccion" class="form-label">Dirección</label>
        <input type="text" class="form-control" name="direccion" id="direccion" value="" required>
    </div>
    <div class="col-12 col-md-3">
        <label for="telefono" class="form-label">Telefono</label>
        <input type="text" class="form-control" name="telefono" id="telefono" maxlength="10" value="" required>
    </div>
    <input type="hidden" name="action" value="insert">
    <div class="col-12">
        <button type="submit" class="btn btn-primary">Crear</button>
    </div>
</form>
<?php include_once('footer.php'); ?>