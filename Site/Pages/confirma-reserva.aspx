<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirma-reserva.aspx.cs" Inherits="Site.Pages.confirma_reserva" %>

<!DOCTYPE html>
<html lang="pt-br" xmlns="http://www.w3.org/1999/xhtml">

  <head runat="server">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>Confirmação da Reserva</title>
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
      <a href="#" class="nav-btn"><button>Alugar</button></a>
    </nav>
  </header>

  <!-- Area Sobre -->
  <div class="ac-container">
    <div class="form">
      <div class="title-area">
        <img class="title-reserva" src="img/Login-Cliente-img/tarifas-img/Confirmação da Reserva.png" alt="img">
        <p><img class="subtitle-reserva" src="img/Login-Cliente-img/tarifas-img/Área da Confirmação da Reserva.png"
            alt="img">
        </p>
      </div>

      <div class="area-box">
        <div class="confirma-container">

          <div class="conf-wrap">
            <div class="box-1">

              <div class="cont-reserva">
                <p class="reserva-par">Nome do Cliente:</p>
                <p class="reserva-p">João da Silva</p>
              </div>
            </div>

            <div class="box-1">
              <div class="cont-reserva">
                <p class="reserva-par">E-mail*:</p>
                <p class="reserva-p">Ex: joaodasilva@gmail.com</p>
              </div>
            </div>

            <div class="box-1">
              <div class="cont-reserva">
                <p class="reserva-par">Data de Retirada:</p>
                <p class="reserva-p">Ex: 01/01/2021</p>
              </div>
            </div>
            <p class="p-reserva-1"> Valor por Diária:</p>
            <p class="p-reserva-2">R$ 300,00</p>

            <a href="reservaveic.html">
              <button class="btn-reserva-1" type="submit">ALTERAR RESERVA</button>
            </a>
          </div>

          <!-- -----------------  -->
          <div class="conf-wrap">
            <div class="box-1">
              <div class="cont-reserva">
                <p class="reserva-par">CPF/CNPJ do Cliente:</p>
                <p class="reserva-p">Ex: 12345678900</p>
              </div>
            </div>

            <div class="box-1">
              <div class="cont-reserva">
                <p class="reserva-par">Carro a Ser Reservado:</p>
                <p class="reserva-p">FUSION</p>
              </div>
            </div>

            <div class="box-1">
              <div class="cont-reserva">
                <p class="reserva-par">Data da Entrega:</p>
                <p class="reserva-p">Ex: 03/01/2021</p>
              </div>
            </div>
            <p class="p-reserva-1"> Prévia de Valor do Total de Dias:</p>
            <p class="p-reserva-2">R$ 900,00</p>

            <a href="sobre-reserva.html">
              <button class="btn-reserva-2" type="submit">CONFIRMAR</button>
            </a>
          </div>
        </div>
        <p class="p-reserva-last">**Se for Cliente Júridico, o Campo Vai Estar Vazio.</p>

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