<?php 
include_once('header.php');

$curl = curl_init();
curl_setopt($curl, CURLOPT_URL,  $route);
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
?>

<h1 class="mt-3">Lista de Usuarios</h1>
<div class="mt-3 mb-3">
    <a href="insert.php" class="btn btn-success">Añadir</a>
</div>
<table id="listusers" class="table table-primary table-striped" style="width:100%">
    <thead>
        <tr>
            <th>Nombre</th>
            <th>Email</th>
            <th>Dirección</th>
            <th>Teléfono</th>
            <th>Fecha Nacimiento</th>
            <th>Edad</th>
            <th>Acciones</th>
        </tr>
    </thead>
    <tbody>
        <?php 
            $rows = json_decode($data);
            for($i = 0; $i < count($rows); $i++){ ?>
                <tr>
                    <td><?= $rows[$i]->name ?></td>
                    <td><?= $rows[$i]->email ?></td>
                    <td><?= $rows[$i]->direccion ?></td>
                    <td><?= $rows[$i]->telefono ?></td>
                    <td><?= date("d/m/Y", strtotime($rows[$i]->fecha_nacimiento)) ?></td>
                    <td><?= $rows[$i]->edad ?></td>
                    <td>
                        <a href="update.php?id=<?= $rows[$i]->id_usuario ?>" class="btn btn-primary">Editar</a>
                        <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-danger" onclick="selectDelete(<?= $rows[$i]->id_usuario ?>)">Eliminar</button>
                    </td>
                </tr>
        <?php } ?>
    </tbody>
</table>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Eliminar registro</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ¿Estas seguro de que quieres eliminar el registro?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button onclick="confirmDelete()" class="btn btn-primary">Confirmar</button>
      </div>
    </div>
  </div>
</div>

<script>
    var id = 0;
    $(document).ready(function () {
        $('#listusers').DataTable();
    });
    function selectDelete(id){
        this.id = id;
    }
    function confirmDelete(){
        window.location = 'routes.php?action=delete&id='+id;
    }
</script>
<?php include_once('footer.php'); ?>