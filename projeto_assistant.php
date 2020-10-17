<?php
    if($_POST){
        $target_dir = "uploads/";
        $target_file = $target_dir . basename($_FILES["chave_json"]["name"]);
        $uploadOk = 1;
        $fileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

        if (!file_exists($target_dir)) {
            mkdir($target_dir, 0777, true);
        }        

        // Checa se arquivo já existe
        if (file_exists($target_file)) {
            echo "Desculpe, arquivo já existente.<br>";
            $uploadOk = 0;
        }

        // Checa o tamanho do arquivo
        if ($_FILES["chave_json"]["size"] > 500000) {
            echo "Desculpe, arquivo muito grande.<br>";
            $uploadOk = 0;
        }

        // Checa o formato do arquivo - só passa se for .json
        if($fileType != "json") {
            echo "Desculpe, apenas arquivos .json são permitidos.<br>";
            $uploadOk = 0;
        }

        // Checa se $uploadOk está em 0 (estará se algum erro apareceu durante o processo)
        if ($uploadOk == 0) {
            echo "Desculpe, seu arquivo não foi enviado.<br>";
            // Se tudo estiver em ordem, tenta subir o arquivo
            } else {
            if (move_uploaded_file($_FILES["chave_json"]["tmp_name"], $target_file)) {
                echo "O arquivo ". basename( $_FILES["chave_json"]["name"]). " foi enviado com sucesso.<br>";
                echo "Execute o script <i>instalador_assistant.sh<i> no seu Terminal para completar os próximos passos da configuração!";
            } else {
                echo "Desculpe, houve um erro no envio de sua chave.<br>";
            }
        }
    }
?>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style/projeto_assistant.css">
<body>
    <h1>Crie seu projeto no Google Actions Console</h1>
    <p>Após criar seu projeto, baixe a chave (<u>arquivo .json</u>), volte para cá e faça o upload dela.</p>
    <br><br>
    <form action="#" method="post" enctype="multipart/form-data">
        <label id="arquivo" for='seletor'>Carregue aqui sua Chave (arquivo <b>.json</b>)</label>
        <input id="seletor" type="file" name="chave_json" id="chave_json">
        <button id="enviar" type="submit" name="submit">Enviar</button>
    </form>
</body>
</html>