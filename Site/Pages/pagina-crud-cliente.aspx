<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagina-crud-cliente.aspx.cs" Inherits="Site.Pages.pagina_crud_cliente" %>

<!DOCTYPE html>
<html lang="pt-br" xmlns="http://www.w3.org/1999/xhtml">

  <head runat="server">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>Cadastro de cliente</title>
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
        <a class="nav-user-icon" href="areacliente.aspx"><img src="img/user.png" alt="img"></a>
        <li><a href="PaginaInicial.aspx" class="menu-btn">Início</a></li>
        <li><a href="localizacao.aspx" class="menu-btn">Localização</a></li>
        <li><a href="tarifas.aspx" class="menu-btn">Tarifas</a></li>
        <li><a href="condicoes.aspx" class="menu-btn">Condições</a></li>
      </ul>
      <a class="nav-btn" href="#"><button runat="server" onserverclick="btnAlugar">Alugar</button></a>
    </nav>
  </header>

  <!-- Section crud-->

  <div class="tabela">
    <p class="info-cad-title">Informações de Cadastro</p>
     
    <div class="table-cliente">
      <div class="table-crud">

          
          <div class="cont-confirme">
          <label>Nome Completo </label> <br/>
          <asp:Label ID="lblNome" runat="server" ></asp:Label>
        </div><br />

        <div class="cont-confirme"><label>Email</label> <br>
          <asp:Label ID="lblemail" runat="server" ></asp:Label>
        </div><br />

        <div class="cont-confirme">
          <label>Data Nascimento </label> <br>
          <asp:Label ID="lblDataNasc" runat="server" ></asp:Label>
        </div><br />

         <div class="box-confirme">
            <label>Telefone/Celular 1 </label> <br/>
            <asp:Label ID="lblTelefone1" runat="server" ></asp:Label>
          </div><br />

          <div class="box-1"><label>Telefone/Celular 2(Opcional)</label> <br/>
            <asp:Label ID="lblcelular" runat="server" ></asp:Label>
          </div><br />

          <div><label>Número da CNH</label> <br/>
            <asp:Label ID="lblNumCNH" runat="server" ></asp:Label>
          </div><br />

          <div><label>CPF ou Passaporte</label> <br/>
            <asp:Label ID="lblCPF" runat="server"></asp:Label>
          </div>  
       
      </div>
          
        </div>
       
      <br/>
      <!-- --------------------------------------- -->
      
             
          <a ><button type="button" class="crud-button" runat="server" onserverclick="BtnEditar" >Editar Cadastro</button></a>
      </div>

      <br>
      
      <!-- --------------------------------------------------- -->
      <!-- <div class="table-crud">
        <div>
          <label>Data Nascimento </label> <br>
          <textarea id="" cols="30" rows="1"></textarea>
        </div>
        <div><label>Número da CNH</label> <br>
          <textarea id="" cols="30" rows="1"></textarea>
        </div>
        <div><label>CPF ou Passaporte</label> <br>
          <textarea id="" cols="30" rows="1"></textarea>
        </div>

      </div> -->


    </div>

 

  <!-- ------------------------------------------- -->
  <div class="content-1">
    <div class="sub-content-1">
      <h1>ALUGUE SEU CARRO AGORA MESMO</h1>
      <p>
        Aceitamos todos os tipos de cartões de crédito e
        débito, também aceitamos Pix
      </p>
    </div>
    <a class="btn-alugue" href="#"><button runat="server" onserverclick="btnAlugar" >ALUGUE JÁ</button></a>

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