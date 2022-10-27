<?php 
    $ip = 'https://localhost:5001/';
    $route = $ip.'api/Usuarios';

    if($_POST['action'] == 'insert'){
        $data_array =  array(
            "id_usuario" => 0,
            "name" => $_POST['name'],
            "email" => $_POST['email'],
            "password" => $_POST['password'],
            "direccion" => $_POST['direccion'],
            "telefono" => $_POST['telefono'],
            "fecha_nacimiento" => $_POST['fecha_nacimiento'],
            "edad" => 0
        );

        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL,  $route);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_HTTPGET,false);
        curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data_array));
        curl_setopt($curl, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($curl, CURLOPT_HEADER, 0);
        curl_setopt($curl, CURLOPT_POST, true);
        $data = curl_exec($curl); 
        $err = curl_error($curl); 
        curl_close($curl);

        if ($err) {
            echo "cURL Error #:" . $err;
            exit();
        }else {
            header("Location: index.php");
        }
    }

    if($_POST['action'] == 'update'){
        $data_array =  array(
            "id_usuario" => $_POST['id_usuario'],
            "name" => $_POST['name'],
            "email" => $_POST['email'],
            "password" => $_POST['password'],
            "direccion" => $_POST['direccion'],
            "telefono" => $_POST['telefono'],
            "fecha_nacimiento" => $_POST['fecha_nacimiento'],
            "edad" => 0
        );

        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $route);
        curl_setopt($curl, CURLOPT_CUSTOMREQUEST, "PUT");
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data_array));
        curl_setopt($curl,CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($curl,CURLOPT_CONNECTTIMEOUT ,3);
		curl_setopt($curl,CURLOPT_TIMEOUT, 20);
        curl_setopt($curl, CURLOPT_HTTPHEADER, array("cache-control: no-cache","content-type: application/json"));
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
        $data = curl_exec($curl); 
        $err = curl_error($curl); 

        curl_close($curl);

        if ($err) {
            echo "cURL Error #:" . $err;
            exit();
        }else{
            header("Location: index.php");
        }
    }

    if($_GET['action'] == 'delete'){
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL,  $route.'/'.$_GET['id']);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_HTTPGET,false);
        curl_setopt($curl, CURLOPT_CUSTOMREQUEST, "DELETE");
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($curl, CURLOPT_HEADER, 0);
        curl_setopt($curl, CURLOPT_POST, false);
        $data = curl_exec($curl); 
        $err = curl_error($curl); 
        curl_close($curl);

        if ($err) {
            echo "cURL Error #:" . $err;
            exit();
        }else{
            header("Location: index.php");
        }
    }