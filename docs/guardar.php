<?php 
    require_once('conexion.php');

    $correos = $_POST["correos"];
    $mensajes = $_POST["mensajes"];
    $fechareg = date("d/mm/y");

    $query = "INSERT INTO inquietudes
                         (correo, mensaje, fecha_inquietud)
                    VALUES ('$correos','$mensajes','$fechareg')";

    $insert = mysqli_query($conexion,$query);
            if($insert == true){
                echo "Registro guardado";
            }else{
                echo "Error al guardar el registro";
            }



?>