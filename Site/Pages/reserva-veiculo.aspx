<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reserva-veiculo.aspx.cs" Inherits="Site.Pages.reserva_veiculo" %>

<!DOCTYPE html>
<html lang="pt-br" xmlns="http://www.w3.org/1999/xhtml">

  <head runat="server">
  <meta charset="UTF-8"> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>Reserva Veículo</title>
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

  <!-- Área de Reserva de Veículo -->
  <div class="container-cliente-confirme">
    <div class="form">
      <div class="title-confirme">
        <div class="cad-confirme">
          <img class="reserva-title" src="img/Login-Cliente-img/Reservar Veículo.png">
        </div>
        <p class="title-par">Área de Reserva de Veículo</p>
      </div>

      <div class="area-box">
        <img class="area-line" src="img/Login-Cliente-img/Line 4.png" alt="img">
      </div>

      <div class="form-reserva">
        <form>
          <label for="dataR">Data de Retirada*:</label> <br/>
          <input type="text" id="dataR" name="dataR" placeholder="Ex: 01/01/2021"><br><br>

          <label for="dataE">Data da Entrega*:</label> <br>
          <input type="text" id="dataE" name="dataE" placeholder="Ex: 01/01/2021"><br><br>

         
        </form>
      </div>
      <br>


         <div class="container-confirme">
        <div class="box-confirme">
          <div >
            <div class="cont-confirme">
           <label for="carroR">Carro a Ser Reservado*:</label> <br>
         
          <select class="reserva-cars" id="carroR" name="carroR">
            <option class="none-reserva" value="volvo">NONE</option>
            <option value="clio">CLIO</option>
            <option value="new QQ">NEW QQ</option>
            <option value="celer">CELER</option>
            <option value="duster">DUSTER</option>
            <option value="fusion">FUSION</option>
          </select>
                <br /> <br />
            </div>
          </div>


      <div class="container-confirme">
        <div class="box-confirme">
          <div class="box-1">
            <div class="cont-confirme">
              <p class="email-par">Valor por Diária:</p>
              <p class="reserva-car">R$300,00</p>
                            </div>
          </div>

          <div class="box-1">
            <div class="cont-confirme">
              <p class="email-par">Prévia de Valor do Total de Dias:</p>
              <p class="reserva-car">R$900,00</p>
            </div>
          </div>

          <div class="box-1">
            <div class="cont-confirme">
              <p class="email-par">Nome do Cliente:</p>
              <p class="reserva-car">João da Silva</p>
            </div>
          </div>

          <div class="box-1">
            <div class="cont-confirme">
              <p class="email-par">CPF/CNPJ do Cliente:</p>
              <p class="reserva-car">Ex: 12345678900</p>
            </div>
          </div>

          <div class="box-1">
            <div class="cont-confirme">
              <p class="email-par">E-mail**:</p>
              <p class="reserva-car">Ex: joaodasilva@gmail.com</p>
            </div>
          </div>


          <p class="aviso-reserva">*Obrigatório <br>
            **Se For Cliente Júridico, o Campo Vai Estar <br>
            Vazio
          </p>
          <br>
          <a href="confirma-reserva.html">
            <button class="btn-confirme-02" type="submit">CONTINUAR</button>
          </a>
        </div>
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