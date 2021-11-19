<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="condicoes.aspx.cs" Inherits="Site.Pages.condicoes" %>

<!DOCTYPE html>
<html lang="pt-br" xmlns="http://www.w3.org/1999/xhtml">

  <head runat="server">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>Condições</title>
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
        <a class="nav-user-icon" href="#"><img src="img/user.png" alt="img"></a>
        <li><a href="paginainicial.aspx" class="menu-btn">Início</a></li>
        <li><a href="localizacao.aspx" class="menu-btn">Localização</a></li>
        <li><a href="tarifas.aspx" class="menu-btn">Tarifas</a></li>
        <li><a href="condicoes.aspx" class="menu-btn">Condições</a></li>
      </ul>

      <a class="nav-btn"> <button runat="server" onserverclick="Alugarbtn" >Alugar</button> </a>

    </nav>
  </header>

  <!-- Section Localização-->
  <div class="container-condicoes">
    <div class="box-condicoes">

      <div class="text-1">
        <p class="par-condicoes">Condições de Locação:</p>
        <div class="condicoes-content">
          O locatário deverá ser maior de 23 anos, possuir CNH (Carteira Nacional de Habilitação) válida há mais de 2
          anos
          e possuir cartão de crédito com limite disponível para cobrir a franquia do seguro.
        </div>
      </div>

      <div class="text-1">
        <p class="par-condicoes">Documentos:</p>
        <div class="condicoes-content">
          O locatário deverá fornecer em seu nome cópias do CPF, RG, CNH, comprovante de residência e renda (com renda
          igual ou superior a franquia do seguro do veículo a ser alugado).
        </div>
      </div>

      <div class="text-3">
        <p class="par-condicoes">Responsabilidades:</p>
        <img src="img/Login-Cliente-img/tarifas-img/condicoes-text.png" alt="">
      </div>
    </div>

  </div>

  <div class="content-1">
    <div class="sub-content-1">
      <h1>ALUGUE SEU CARRO AGORA MESMO</h1>
      <p>
        Aceitamos todos os tipos de cartões de crédito e
        débito, também aceitamos Pix
      </p>
    </div>
    <a class="btn-alugue" href="#"><button>ALUGUE JÁ</button></a>

  </div>

  <div class="content-2">
    <div class="sub-content-2">
      <h1>SE PREFERIR, USE NOSSO APLICATIVO</h1>
      <p>
        Instale nosso aplicativo mobile, disponível apenas
        para dispositivos android
      </p>
    </div>
    <a href="""><img src=" img/disponivel_no_google_play_1.png" alt=""></a>

  </div>
  </div>
  </section>

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
  </form>
</body>

</html>
