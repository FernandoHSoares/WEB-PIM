<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sobre-reserva.aspx.cs" Inherits="Site.Pages.sobre_reserva" %>

<!DOCTYPE html>
<html lang="pt-br" xmlns="http://www.w3.org/1999/xhtml">

  <head runat="server">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>Sobre a Reserva</title>
</head>

<body>
  <form id="form1" runat="server">
  <!-- Navbar -->
  <header>
    <nav class="navbar">
      <div class="logo">
        <h1><a href="#">AluCAR</a></h1>
        <img src="img/locadora_de_ve_culos.png" alt="img">
      </div>

      <ul class=" menu">
        <a class="nav-user-icon" href="areacliente.aspx"><img src="img/user.png" alt=""></a>
        <li><a href="Paginainicial.aspx" class="menu-btn">Início</a></li>
        <li><a href="localizacao.aspx" class="menu-btn">Localização</a></li>
        <li><a href="tarifas.aspx" class="menu-btn">Tarifas</a></li>
        <li><a href="condicoes.aspx" class="menu-btn">Condições</a></li>
      </ul>
      <a href="reserva-veiculo.aspx" class="nav-btn"><button>Alugar</button></a>
    </nav>
  </header>

  <!-- Area Sobre -->
  <div class="ac-container">
    <div class="form">
      <div class="title-area">
        <img class="title-sobre" src="img/Login-Cliente-img/tarifas-img/SOBRE A SUA RESERVA_.png" alt="img">
        <p><img class="subtitle-sobre"
            src="img/Login-Cliente-img/tarifas-img/Leia as Informações Sobre a Sua Reserva.png" alt="img">
        </p>
      </div>

      <div class="area-box">
        <img class="sobre-line" src="img/Login-Cliente-img/Line 4.png" alt="img">

        <p class="p-sobre-1">A sua reserva foi feita!</p>
        <p class="p-sobre-2">Por favor anote o ID da sua reserva abaixo e leve com você os documentos necessários
          para <br>
          a retiradada veículo na loja.</p>
        <p class="p-sobre-3">ID da Reserva:</p>
        <p class="p-sobre-4">123456789</p>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <div class="max-width">
    <div class="content-2">
      <div class="sub-content-2">
        <h1>SE PREFERIR, USE NOSSO APLICATIVO</h1>
        <p>
          Instale nosso aplicativo mobile, disponível apenas
          para dispositivos android
        </p>
      </div>
      <a href="#"><img src=" img/disponivel_no_google_play_1.png" alt="img"></a>
    </div>
  </div>

  <!-- Footer -->
  <section class="footer-bg">
    <div class="max-width">
      <div class="texto-marca02">
        <h1>AluCAR</h1>
        <img src="img/locadora_de_ve_culos.png" alt="img">
      </div>
    </div>


    </div>
    <div class="rodape">
      <div class="max-width">
        <div class="container-bg">
          <div class="bg-1">
            <p>Endereço</p>
            <img src="img/line_1.png" alt="">
          </div>
          <div class="bg-2">
            <p>Contato</p>
            <img src="img/line_2.png" alt="">
          </div>
          <div bg-3>
            <p>Redes Sociais</p>
            <img src="img/line_3.png" alt="">
          </div>
        </div>

        <div class="contatos">
          <div class="endereco">
            <p>Av. Endereço Fictício, 123
              Jardim Ficção. CEP: 12345-700
              São José dos Campos - SP</p>
          </div>

          <div class="telefones">
            <p> +55(12)3912-4567 <br>
              +55(12)91234-5678</p>
            <p>alucar@alucarrentacar.com</p>
          </div>
          <div class="redes">
            <a href="#"><img src="img/whatsapp_1.png" alt="img-1"></a>
            <a href="#">
              <img src="img/instagram_1.png" alt="img-2">

            </a>
            <a href="#">
              <img src="img/facebook_1.png" alt="img-3">

            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
  </div>
</form>
</body>

</html>