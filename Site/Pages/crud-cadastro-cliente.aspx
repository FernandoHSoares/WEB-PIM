<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crud-cadastro-cliente.aspx.cs" Inherits="Site.Pages.crud_cadastro_cliente" %>

<!DOCTYPE html>
<html lang="pt-br" xmlns="http://www.w3.org/1999/xhtml">

  <head runat="server">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>Editar Cadastro de Cliente</title>
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

  <!-- Login -->
  <div class="container-cad">
    <div class="form-cad">
      <div class="title-cliente">
        <img src="img/Login-Cliente-img/user_1.png" alt="img">
        <img class="img-cliente" src="img/Editar Cadastro de Cliente.png" img">
        <p class="p-cliente">Atualização de Cadastro do Cliente</p>
        <br>
      </div>

      <!-- fomulario -->
      <div class="cliente-crud-box">
        <label>E-mail:</label> <br>   
        <asp:TextBox ID="txemail" runat="server" TextMode="Email" placeholder="Ex: joaodasilva@gmail.com" ></asp:TextBox>
        <br><br>

        <label>Senha:</label> <br>
        <asp:TextBox ID="txsenha" runat="server" TextMode="Password" placeholder="Sua Senha de Login do Site" ></asp:TextBox>
        <br><br>

        <label>Nome Completo*:</label> <br>      
        <asp:TextBox ID="txnome" runat="server" placeholder="João Francisco Cunha" ></asp:TextBox>
        <br><br>
       
        <label>Telefone/Celular 1*:</label> <br>
        <asp:TextBox ID="txtelefone" runat="server" TextMode="Number" placeholder="telefone de contato" ></asp:TextBox>
        <br><br>

        <label>Telefone/Celular 2 (Opcional):</label> <br>
        <asp:TextBox ID="txcelular" runat="server" TextMode="Number" placeholder="telefone de contato" ></asp:TextBox>
        <br> <br>

        
        <p>
          *Obrigatório <br>
          **Não Insira . - (Pontos e Traço)
        </p> <br>
         <p> <asp:Label ID="lblmensagem" runat="server" ></asp:Label> </p>
        <a href="#">
          <button class="btn-1" type="submit">Atualizar</button>
        </a>
        <br> <br>
        <a href="#" >
          <button  class="btn-delete" runat="server" onserverclick="BtnEexcluir_conta">Excluir Conta</button>
        </a>
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