<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login-cliente.aspx.cs" Inherits="Site.Pages.login_cliente" %>

<!DOCTYPE html>
<html lang="pt-br">

  <head runat="server">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>Login do Cliente</title>
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
        <li><a href="PaginaInicial.aspx" class="menu-btn">Início</a></li>
        <li><a href="localizacao.aspx" class="menu-btn">Localização</a></li>
        <li><a href="tarifas.aspx" class="menu-btn">Tarifas</a></li>
        <li><a href="condicoes.aspx" class="menu-btn">Condições</a></li>
      </ul>
     <a class="nav-btn"><button runat="server" onserverclick="Alugar_ServerClick">Alugar</button> </a>
    </nav>
  </header>

  <!-- Login -->
  <div class="container">
    <div class="form">
      <div class="title-cliente">
        <img src="img/Login-Cliente-img/user_1.png" alt="img">
        <img class="img-cliente" src="img/Login-Cliente-img/login_do_cliente.png" alt="img">
        <p class="log">Login de Cliente Físico</p>
      </div>
      <label>E-mail:</label> <br>
      <asp:TextBox ID="txEmail" runat="server" TextMode="Email" placeholder="Ex: joaodasilva@gmail.com"  ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txEmail" ErrorMessage="Por favor digite seu E-mail" ForeColor="Red" ></asp:RequiredFieldValidator>
      <br><br>

       <label>Senha:</label> 
       <br> 
      <asp:TextBox ID="txSenha" runat="server" TextMode="Password" placeholder="Sua Senha de Login do Site"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredSenha" runat="server" ControlToValidate="txSenha" ErrorMessage="Por favor digite uma senha" ForeColor="Red" ></asp:RequiredFieldValidator>

      <p>
          <asp:Label ID="lblMensagemlogin" runat="server" ForeColor="Red" ></asp:Label>
      </p>
       
        <button class="btn-1" runat="server" onserverclick="BTN_Entrar" >ENTRAR</button>
     
      <p class="cadastro">Você Ainda Não Tem Cadastro? <a href="cadastro-cliente.aspx"><span class="cadastre">Cadastre-se</span></a></p>
    
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
  </div>
</form>

</body>

</html>