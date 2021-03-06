<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro-cliente.aspx.cs" Inherits="Site.Pages.cadastro_cliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="pt-br">

<head runat="server">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible; Content-Type" content="IE=edge; text/html" >
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">

 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"/>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
    
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
        <a class="nav-user-icon" href="tela-log.aspx"><img src="img/user.png" alt=""></a>
        <li><a href="Paginainicial.aspx" class="menu-btn">Início</a></li>
        <li><a href="localizacao.aspx" class="menu-btn">Localização</a></li>
        <li><a href="tarifas.aspx" class="menu-btn">Tarifas</a></li>
        <li><a href="condicoes.aspx" class="menu-btn">Condições</a></li>
      </ul>
      <a href="tela-log.aspx" class="nav-btn"><button>Alugar</button></a>
    </nav>
  </header>

  <!-- Login -->
      
  <div class="container-cad">
    <div class="form-cad">
      <div class="title-cliente">
          <div class="user-confirme">
        <img src="img/Login-Cliente-img/user_1.png" alt="img">
        <img class="img-cliente" src="img/Login-Cliente-img/Cadastro de Cliente.png" img">
        <p class="p-cliente">Cadastro de Cliente Físico</p>
      </div>

      <!-- fomulario -->
     
      <br><br>
      <label>Nome Completo*:</label> <br>
      <asp:TextBox ID="txNome" runat="server" k placeholder="Ex: Joao da silva"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredNome" runat="server" ControlToValidate="txNome" ErrorMessage="Por favor digite seu nome completo" ForeColor="Red" ></asp:RequiredFieldValidator>

      <br /><br />
      <label>E-mail:</label> <br/>
      <asp:TextBox ID="txEmail" runat="server" TextMode="Email" placeholder="Ex: joaodasilva@gmail.com" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txEmail" ErrorMessage="Por favor digite seu E-mail" ForeColor="Red" ></asp:RequiredFieldValidator>


      <br><br>
      <label>Senha:</label> <br>
      <asp:TextBox ID="txSenha" runat="server" TextMode="Password" placeholder="Sua Senha de Login do Site" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredSenha" runat="server" ControlToValidate="txSenha" ErrorMessage="Por favor digite uma senha" ForeColor="Red" ></asp:RequiredFieldValidator>

      <br><br>
      <label>Confirme sua senha:</label> <br>
      <asp:TextBox ID="txConfSenha" runat="server" TextMode="Password" placeholder="confirmação da senha de login" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredConfSenha" runat="server" ControlToValidate="txConfSenha" ErrorMessage="Por favor digite a senha de confirmação" ForeColor="Red" ></asp:RequiredFieldValidator>

      
      <br><br>
      <label>CPF*:</label> <br>
      <asp:TextBox ID="txCPF" runat="server" placeholder="CPF" minlength="14" maxlength="14" onkeypress="$(this).mask('000.000.000-00');"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredCPF" runat="server" ControlToValidate="txCPF" ErrorMessage="Por favor digite o seu CPF" ForeColor="Red" ></asp:RequiredFieldValidator>
     

        <br><br>
      <label>Passaporte:</label> <br>
      <asp:TextBox ID="txpassaporte" runat="server" placeholder="Passaporte" minlength="8" maxlength="8"></asp:TextBox>
     

      <br><br>
      <label>RG*:</label> <br>
      <asp:TextBox ID="txRG" runat="server" placeholder="RG" onkeypress="$(this).mask('00.000.000-0');" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredRG" runat="server" ControlToValidate="txRG" ErrorMessage="Por favor digite Seu RG" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        
      <br><br>
      <label>Numero da CNH*:</label> <br>
      <asp:TextBox ID="txNumCNH" runat="server" placeholder="45878547854" onkeypress="$(this).mask('00000000000');"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredNumCNH" runat="server" ControlToValidate="txNumCNH" ErrorMessage="Por favor digite o numero da CNH" ForeColor="Red" ></asp:RequiredFieldValidator>
      
        
      <br><br>
      <label>Data de Nascimento*:</label> <br>
      <asp:TextBox Id="txDataNascimento" runat="server" TextMode="Date" placeholder="ex: 24/05/1997" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredDataNascimento" runat="server" ControlToValidate="txDataNascimento" ErrorMessage="Por favor entre com a data de nascimento" ForeColor="Red" ></asp:RequiredFieldValidator>
          
        
      <br> <br>
      <label>Telefone/Celular 1*:</label> <br>
      <asp:TextBox ID="txTel1" runat="server" TextMode="Phone" Placeholder="(11)98898-8989" onkeypress="$(this).mask('(00)0000-00009')"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredTel1" runat="server" ControlToValidate="txTel1" ErrorMessage="Por favor digite seu telefone" ForeColor="Red" ></asp:RequiredFieldValidator>
      
        
      <br><br>
      <label>Celular*:</label> <br>
      <asp:TextBox ID="txCelular" runat="server" TextMode="Phone" placeholder="(11)98898-8989" onkeypress="$(this).mask('(00)0000-00009')" ></asp:TextBox>
      
      
     
      <br><br>    
      <p>
        *Obrigatório <br>
        **Não Insira . - (Pontos e Traço)
      </p> <br>
        <p>
            <asp:Label ID="lblMensagem" runat="server" ForeColor="Red"></asp:Label>


        </p>
      
        
       <button  class="btn-1" runat="server" onserverclick="btnProsseguir" >PROSSEGUIR</button>
      
          
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