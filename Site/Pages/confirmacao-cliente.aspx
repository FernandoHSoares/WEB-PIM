<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmacao-cliente.aspx.cs" Inherits="Site.Pages.confirmacao_cliente" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="pt-br">

<head runat="server">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>Confirmação de Cadastro</title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"/>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   
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
        <a class="nav-user-icon" href="#"><img src="img/user.png" alt=""></a>
        <li><a href="Paginainicial.aspx" class="menu-btn">Início</a></li>
        <li><a href="localizacao.aspx" class="menu-btn">Localização</a></li>
        <li><a href="tarifas.aspx" class="menu-btn">Tarifas</a></li>
        <li><a href="condicoes.aspx" class="menu-btn">Condições</a></li>
      </ul>
      <a href="#" class="nav-btn"><button>Alugar</button></a>
    </nav>
  </header>

  <!-- Area do cliente -->
  <div class="container-cliente-confirme">
    <div class="form">
      <div class="title-confirme">
        <div class="cad-confirme">
          <img class="user-confirme" src="img/Login-Cliente-img/user_1.png" alt="img">
          <img src="img/Login-Cliente-img/Cadastro de Cliente.png">
        </div>
        <p class="title-par">Confirme Suas Informações:</p>
      </div>

      <div class="area-box">
        <img class="area-line" src="img/Login-Cliente-img/Line 4.png" alt="img">
      </div>
        <asp:Label ID="lblteste" runat="server" ></asp:Label>
      <div class="container-confirme">
        <div class="box-confirme">
          <div class="box-1">
            <div class="cont-confirme">
              <p class="email-par">E-mail*:</p>  
                &nbsp&nbsp<asp:Label ID="lblEmail" runat="server" ></asp:Label>
                <asp:TextBox ID="txEmail" TextMode="Email" runat="server"></asp:TextBox>                  
            </div>
          </div>

            <br />
          <div class="box-1">
            <div class="cont-confirme">
              <p class="email-par">Nome Completo*:</p>
             &nbsp&nbsp <asp:Label ID="lblNome" runat="server"></asp:Label>
              <asp:TextBox ID="txNome" runat="server"  ></asp:TextBox>
            </div>
          </div>
        <br />
          <div class="box-1">
            <div class="cont-confirme">
              <p class="email-par">CPF*/**:</p>
             &nbsp&nbsp <asp:Label ID="lblCPF" runat="server"></asp:Label>
              <asp:TextBox ID="txCPF" runat="server" minlength="14" maxlength="14" onkeypress="$(this).mask('000.000.000-00');" ></asp:TextBox>
            </div>
          </div>
          

             <br />
          <div class="box-1">
            <div class="cont-confirme">
              <p class="email-par">Passaporte:</p>
             &nbsp&nbsp <asp:Label ID="lblpassaporte" runat="server"></asp:Label>
              <asp:TextBox ID="txpassaporte" runat="server" minlength="8" maxlength="8" ></asp:TextBox>
            </div>
          </div>
            <br />

              <div class="box-1">
            <div class="cont-confirme">
              <p class="email-par">RG:</p>
             &nbsp&nbsp <asp:Label ID="lblRG" runat="server"></asp:Label>
              <asp:TextBox ID="txRG" minlength="8" maxlength="9" runat="server" onkeypress="$(this).mask('00.000.000-0');" ></asp:TextBox>
            </div>
          </div>

            <br />
          <div class="box-1">
            <div class="cont-confirme">
              <p class="email-par">Data de Nascimento*:</p>
             &nbsp&nbsp <asp:Label ID="lblDNasc" runat="server"></asp:Label>
              <asp:TextBox ID="txDNasc" TextMode="Date" runat="server" ></asp:TextBox>
            </div>
          </div>

            <br />
          <div class="box-1">
            <div class="cont-confirme">
              <p class="email-par">Número da CNH (Carteira Habilitação)*:</p>
              &nbsp&nbsp<asp:Label ID="lblNumCNH" runat="server" ></asp:Label>
              <asp:TextBox ID="txCNH" TextMode="Number" runat="server" onkeypress="$(this).mask('00000000000');"></asp:TextBox>
            </div>
          </div>

            <br />
          <div class="box-1">
            <div class="cont-confirme">
              <p class="email-par">Telefone/Celular 1*:</p>
              &nbsp&nbsp<asp:Label ID="lblTelefone" runat="server" ></asp:Label>
              <asp:TextBox ID="txTelefone" runat="server" onkeypress="$(this).mask('(00)0000-00009')" ></asp:TextBox>
            </div>
          </div>

            <br />
          <div class="box-1">
            <div class="cont-confirme">
              <p class="email-par">Telefone/Celular 2 (Opcional):</p>
              &nbsp&nbsp<asp:Label ID="lblCelular" runat="server"></asp:Label>
              <asp:TextBox ID="txcel" runat="server" onkeypress="$(this).mask('(00)0000-00009')"></asp:TextBox>

            </div>
          </div>

            <br />

          <br>
          <p>*Obrigatório <br>
            **Não Insira .- (Pontos e Traços)
          </p>
            <p>
            <asp:Label ID="lblMensagem" runat="server" ForeColor="Red"></asp:Label>
            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </p>
<!--
          <a href="cadastro-cliente.html">
            <button class="btn-confirme" type="submit">ALTERAR DADOS</button>
          </a><br>
            -->
          <button class="btn-1" runat="server" onserverclick="btnConfirmaCadastro" >CONFIRMAR CADASTRO</button>
            <br /> <br />
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