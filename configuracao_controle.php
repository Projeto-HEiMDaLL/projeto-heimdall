<?php

  if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    if ($_SERVER['CONTENT_TYPE'] == 'application/json') {
      $json = file_get_contents('php://input');
      $data = json_decode($json, TRUE);

      $full_cmd = 'irsend '.$data['frequence'].' '.$data['config'].' '.$data['command'];
      system($full_cmd);

      passthru("echo ' Comando enviado: ".$full_cmd."' > log.txt");
    } else {
      extract($_POST);

      $full_cmd = 'irsend '.$frequence.' '.$config.' '.$command;
      system($full_cmd);

      echo "<br>Comando: ".$full_cmd."<br><br>";
    }
}

?>
<!DOCTYPE html>
<html lang="pt">
<head>
  <link rel="stylesheet" href="style/configuracao_controle.css">
</head>
<body>

  <div id="controllers" style="display: none;">
      <?php
          $output = shell_exec('irsend list "" ""');

          $controllers = preg_split('/\s+/', trim($output));
      ?>
  </div>

  <form action="#" method="post">

    <p>Selecione a frequência do comando</p>
    <select name="frequence">
        <optgroup>
        <option value=""> Selecione a frequência</option>
        <option value="SEND_ONCE"> Enviar uma vez </option>
        <option value="SEND_START"> Começar sequência </option>
        <option value="SEND_STOP"> Parar sequência </option>
        </optgroup>
    </select>
<!--   
    <input type="radio" name="frequence" value="SEND_ONCE"> Enviar uma vez<br>
    <input type="radio" name="frequence" value="SEND_START"> Começar sequência<br>
    <input type="radio" name="frequence" value="SEND_STOP"> Parar sequência<br> -->
    <!-- <br> -->
    <p>Selecione o nome do arquivo de configuração de seu controle (ex: philips)</p>
    
    <input type="text" id="controller_name" name="config" placeholder="Selecione um controle"/><br>
    <!-- <br> -->
    <p>Escolha um comando do controle remoto (ex: Liga/Desliga)</p>
    <!-- <br> -->

    <label>
      <input type="radio" name="command" value="KEY_POWER">
      <img src="img/power_button.png" alt="">
    </label>

    <label>
      <input type="radio" name="command" value="KEY_MENU">
      <img  id="menu" src="img/menu_button.png" alt="">
    </label>
    
    <br>

    <label>
      <input type="radio" name="command" value="KEY_CHANNELUP">
      <!-- <img class="btn_can" id="btn_can_mais" src="img/ch_up.png" alt=""> -->
      <img  src="img/ch_up.png" alt="">
    </label>

    <br>
    
    <label>
      <input type="radio" name="command" value="KEY_VOLUMEUP">
      <!-- <img class="btn_vol" id="btn_vol_mais" src="img/vol_up.png" alt=""> -->
      <img src="img/vol_up.png" alt="">
    </label>
    
    <label>
      <input type="radio" name="command" value="KEY_OK">
      <img  src="img/ok.png" alt="">
    </label>
    
    <label>
      <input type="radio" name="command" value="KEY_VOLUMEDOWN">
      <img   src="img/vol_down.png" alt="">
      <!-- <img  class="btn_vol" id="btn_vol_menos" src="img/vol_down.png" alt=""> -->
    </label>
    
    <br>

    <label>
      <input type="radio" name="command" value="KEY_CHANNELDOWN">
      <!-- <img class="btn_can" id="btn_can_menos" src="img/ch_down.png" alt=""> -->
      <img  src="img/ch_down.png" alt="">
    </label>
  
    <br>

    <label>
      <input type="radio" name="command" value="KEY_1">
      <img src="img/um.png" alt="">
    </label>

    <label>
      <input type="radio" name="command" value="KEY_2">
      <img src="img/dois.png" alt="">
    </label>

    <label>
      <input type="radio" name="command" value="KEY_3">
      <img src="img/tres.png" alt="">
    </label>

    <br>

    <label>
      <input type="radio" name="command" value="KEY_4">
      <img src="img/quatro.png" alt="">
    </label>

    <label>
      <input type="radio" name="command" value="KEY_5">
      <img src="img/cinco.png" alt="">
    </label>

    <label>
      <input type="radio" name="command" value="KEY_6">
      <img src="img/seis.png" alt="">
    </label>

    <br>

    <label>
      <input type="radio" name="command" value="KEY_7">
      <img src="img/sete.png" alt="">
    </label>

    <label>
      <input type="radio" name="command" value="KEY_8">
      <img src="img/oito.png" alt="">
    </label>

    <label>
      <input type="radio" name="command" value="KEY_9">
      <img src="img/nove.png" alt="">
    </label>

    <br>

    <label>
      <input type="radio" name="command" value="KEY_0">
      <img src="img/zero.png" alt="">
    </label>
      
    <br>

    <input id="enviar" type="submit" value="Enviar">
    <input id="limpar" type="reset" value="Limpar escolhas">
  </form>

  <script>
    $(function() {
      
      var element = document.getElementById("controllers");
      var controllers = element.textContent;

      $("#controller_name" ).autocomplete({
          source: controllers
      });
    });
  </script>

</body>
</html>
