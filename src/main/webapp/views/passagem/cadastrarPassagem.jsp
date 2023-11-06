<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar Passagem</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" type="text/css" href="../../assets/css/style.css">
</head>
<body>
<!--Início do Menu com acesso para as guias do site-->
     <header>
      <nav class="navbar navbar-expand-sm Navbar">
         <div class="container-fluid">
            <a class="navbard-brand" href="#"><img id="logo" src="../../assets/images/logo_nav.png" alt="Vogue Agency"></a>
            <button class="navbar-toggler navbar-light collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNavbar" aria-controls="navbar-links" aria-expanded="false" aria-label="toggle navigation">
               <span class="navbar-toggler-icon"></span>
             </button>
             <div class="navbar-collapse" id="collapseNavbar">
               <ul class="navbar-nav">
                  <li class="nav-item">
                     <a class="nav-link text-black" href="../../index.jsp">Home</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link text-black" href="../../paginashtml/destino.jsp">Destino</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link text-black" href="../../paginashtml/promocoes.jsp">Promoções</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link text-black" href="../../paginashtml/contato.jsp">Contato</a>
                  </li>
                  <li class="nav-item_2">
                    <a class="nav-link text-black" href="../../cliente">Cadastrar-se</a>
                 </li>
                 <li class="nav-item_3">
                    <a class="nav-link text-black" href="../../paginashtml/login.jsp">Login</a>
                 </li>
               </ul>
            </div>
         </div>
      </nav>
   </header>
<!--Final do Menu com acesso para as guias do site-->
<!--Início do main - conteúdo principal (formulário) para cadastrar uma passagem na plataforma-->
   <main class="container_formulario">
      <div class="ajustes-cor-formulario">
         <h2>Cadastre-se</h2>
         <h4>Preencha o formulário abaixo para cadastrar uma passagem em nosso site</h4>
         <form action="../../passagem-create">
            <fieldset class="caixa_formulario">
               <div class="campo">
                  <legend> Cidade </legend>
                  <input type="text" placeholder="Digite a cidade destino de sua viagem" id="cidade" name="cidade" class = "form-control" >
               </div>
               <div class="campo">
                  <legend> Data da passagem </legend>
                  <input type="text" placeholder="Informe a data da sua passagem" id="dat_passagem" name="data_passagem" class = "form-control" >
               </div>
               <div class="campo">
                <legend> Preço da passagem </legend>
                <input type="number" placeholder="Qual o preço do pacote de passagem" id="preço" name="preço" step = "0.01" class = "form-control" >
             </div>
               <div class="campo">
                <div class="campo">
                    <legend> Categoria da viagem </legend>
                    <input type="text" placeholder="Qual é a categoria do destino da sua viagem?" id="categoria" name="categoria" class = "form-control" >
                </div>
					<input type="submit" value="Enviar">
				<a href="../../passagem" class="btn btn-danger" style="margin-left:10px">Cancelar</a>
            </fieldset>
         </form>
      </div>
   </main>
<!--Final do main - conteúdo principal (formulário) para cadastrar uma passagem na plataforma-->
<!--Início do rodapé das páginas-->
   <footer>
      <div id="footer_content">
         <div id="footer_contacts">
            <a href="#" class="logo"> <img class="cabecalho_logo" src="../../assets/images/logo_nav.png" alt="Logo da Vogue"> </a>
            <p>A empresa para realizar seus sonhos com a melhor experiência</p>
            <div id="footer_social_media">
               <a href="#" class="footer_link" id="instagram">
               <i class="fa-brands fa-instagram"></i>
               </a>
               <a href="#" class="footer_link" id="facebook">
               <i class="fa-brands fa-facebook-f"></i>
               </a>
               <a href="#" class="footer_link" id="whatsapp">
               <i class="fa-brands fa-whatsapp"></i>
               </a>
            </div>
         </div>
         <ul class="footer_list">
            <li>
               <h3>Categorias de viagens</h3>
            </li>
            <li>
               <a href="#" class="footer_link">Ecoturismo</a>
            </li>
            <li>
               <a href="#" class="footer_link">Cidades paradisíacas</a>
            </li>
            <li>
               <a href="#" class="footer_link">Cidades Históricas</a>
            </li>
         </ul>
         <ul class="footer_list">
            <li>
               <h3>Produtos</h3>
            </li>
            <li>
               <a href="#" class="footer_link">Aluguel de carros</a>
            </li>
            <li>
               <a href="#" class="footer_link">Shows</a>
            </li>
            <li>
               <a href="#" class="footer_link">Hospedagem</a>
            </li>
         </ul>
         <div id="footer_subscribe">
            <h2>Inscreva-se</h2>
            <p> Digite seu email para receber nossas promoções de viagem</p>
            <div id="input_group">
               <input type="email" id="email">
               <button>
               <i class="fa-regular fa-envelope"></i>
               </button>
            </div>
         </div>
      </div>
      <div id="footer_copyright">
         &#169
         2023
      </div>
   </footer>
<!--Final do rodapé das páginas-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>