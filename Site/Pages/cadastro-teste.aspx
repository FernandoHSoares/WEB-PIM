<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro-teste.aspx.cs" Inherits="Site.Pages.cadastro_teste" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="pt-br">

<head runat="server">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>Cadastro de Cliente</title>
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
        <li><a href="pagina-inicial.html" class="menu-btn">Início</a></li>
        <li><a href="localizacao.html" class="menu-btn">Localização</a></li>
        <li><a href="tarifas.html" class="menu-btn">Tarifas</a></li>
        <li><a href="condicoes.html" class="menu-btn">Condições</a></li>
      </ul>
      <a href="#" class="nav-btn"><button>Alugar</button></a>
    </nav>
  </header>

  <!-- Login -->
  <div class="container-cad">
    <div class="form-cad">
      <div class="title-cliente">
        <img src="img/Login-Cliente-img/user_1.png" alt="img">
        <img class="img-cliente" src="img/Login-Cliente-img/Cadastro de Cliente.png" img">
        <p class="p-cliente">Cadastro de Cliente Físico</p>
      </div>

      <!-- fomulario -->
      <label>E-mail:</label> <br>
      <asp:TextBox ID="txEmail" runat="server" TextMode="Email" placeholder="Ex: joaodasilva@gmail.com" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txEmail" ErrorMessage="Por favor digite seu E-mail" ForeColor="Red" ></asp:RequiredFieldValidator>


      <br><br>
      <label>Senha:</label> <br>
      <asp:TextBox ID="txSenha" runat="server" TextMode="Password" placeholder="Sua Senha de Login do Site" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredSenha" runat="server" ControlToValidate="txSenha" ErrorMessage="Por favor digite uma senha" ForeColor="Red" ></asp:RequiredFieldValidator>
        

      <br><br>
      <label>Senha:</label> <br>
      <asp:TextBox ID="txConfSenha" runat="server" TextMode="Password" placeholder="Sua Senha de Login do Site" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredConfSenha" runat="server" ControlToValidate="txconfSenha" ErrorMessage="Por favor digite uma senha" ForeColor="Red" ></asp:RequiredFieldValidator>
         
      
      <br><br>    
      <p>
        *Obrigatório <br>
        **Não Insira . - (Pontos e Traço)
      </p> <br>
        <p>
            <asp:Label ID="lblMensagem2" runat="server"></asp:Label>

        </p>
      
        
       <button class="btn-1" runat="server" onserverclick="Unnamed_ServerClick" >CADASTRAR</button>
      

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


    
    <div class="rodape">
      <div class="max-width">
        <div class="container-bg">
          <div class="bg-1">
            <p>Endereço</p>
            <img src="img/line_1.png" alt=""/>
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
