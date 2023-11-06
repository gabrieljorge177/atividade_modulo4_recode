<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Promoções</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
</head>
<body>
<!--Início do Menu com acesso para as guias do site-->
    <header>
      <nav class="navbar navbar-expand-sm Navbar">
         <div class="container-fluid">
            <a class="navbard-brand" href="#"><img id="logo" src="../assets/images/logo_nav.png" alt="Vogue Agency"></a>
            <button class="navbar-toggler navbar-light collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNavbar" aria-controls="navbar-links" aria-expanded="false" aria-label="toggle navigation">
               <span class="navbar-toggler-icon"></span>
             </button>
           <div class="navbar-collapse" id="collapseNavbar">
               <ul class="navbar-nav">
                  <li class="nav-item">
                     <a class="nav-link text-black" href="../index.jsp">Home</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link text-black" href="destino.jsp">Destino</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link text-black" href="promocoes.jsp">Promoções</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link text-black" href="contato.jsp">Contato</a>
                  </li>
                  <li class="nav-item_2">
                    <a class="nav-link text-black" href="../passagem">Cadastrar-se</a>
                 </li>
                 <li class="nav-item_3">
                    <a class="nav-link text-black" href="login.jsp">Login</a>
                 </li>
               </ul>
            </div>
         </div>
      </nav>
   </header>
<!--Final do Menu com acesso para as guias do site-->
<!--Início do main - conteúdo principal da página de promoções baseado em cards do bootstrap-->
  <main class="cards-promocoes">
     <h3 class="text-center" style="color: red;">Destinos com mais de 50% de desconto</h3>
     <div class="card-group">
        <div class="card">
           <img class="card-img-top img-fluid" src="../assets/images/turquia_istanbul_card.jpg" alt="Imagem de capa do card"> 
           <div class="card-body">
              <h5 class="card-title">Istanbul(Turquia)</h5>
              <p class="card-text">De:  <span class="texto-riscado">R$ 5000</span></p>
              <p class="card-text">Preço com desconto: R$ 2470</p>
              <p class="card-text"> É uma cidade para se apaixonar, principalmente depois de conhecer a história e as curiosidades do local.
                 Cheia de histórias, incríveis atrações turísticas e uma boa gastronomia, a principal cidade da Turquia é um destino que agrada todo tipo de turista.
              </p>
              <p class="card-text"><small class="text-muted">Oferta válida até 05 de Agosto de 2023</small></p>
              <span class="conteudo-sobre-imagem"> Cidades Históricas</span>
              <a href="../compra-getCreate" class="btn btn-primary">Agendar</a>
           </div>
        </div>
        <div class="card">
           <img class="card-img-top img-fluid" src="../assets/images/ouropreto_card.jpg" alt="Imagem de capa do card">
           <div class="card-body">
              <h5 class="card-title">Ouro Preto (Minas Gerais)</h5>
              <p class="card-text">De:  <span class="texto-riscado">R$ 1850</span></p>
              <p class="card-text">Preço com desconto: R$ 900</p>
              <p class="card-text">A cidade de Ouro Preto possui o maior e mais importante acervo de arte e arquitetura do período colonial do Brasil. Tombada como Patrimônio Mundial da Humanidade em 1980, foi uma das primeiras cidades do país a receber o título.</p>
              <p class="card-text"><small class="text-muted">Oferta válida até 05 de Agosto de 2023</small></p>
              <span class="conteudo-sobre-imagem"> Cidades Históricas</span>
              <a href="../compra-getCreate" class="btn btn-primary">Agendar</a>
           </div>
        </div>
        <div class="card">
           <img class="card-img-top img-fluid" src="../assets/images/mexico_chichen_card.jpg" alt="Imagem de capa do card">
           <div class="card-body">
              <h5 class="card-title">Chichen (México)</h5>
              <p class="card-text">De:  <span class="texto-riscado">R$ 4000</span></p>
              <p class="card-text">Preço com desconto: R$ 1750,00</p>
              <p class="card-text">Chichen Itzá é um verdadeiro tesouro da história nacional mexicana, provando que o país oferece muito mais do que hotéis, resorts luxuosos e praias paradisíacas. Trata-se de uma antiga cidade do povo Maia, da era pré-colombiana, e foi um grande centro urbano dessa civilização.
              </p>
              <p class="card-text"><small class="text-muted">Oferta válida até 05 de Agosto de 2023</small></p>
              <span class="conteudo-sobre-imagem"> Cidades Históricas</span>
              <a href="../compra-getCreate" class="btn btn-primary">Agendar</a>
           </div>
        </div>
     </div>
     <h3 class="text-center" style="background-color: rgba(255,255,255,0.4); color: red;">Destinos com mais de 25% de desconto</h3>
     <div class="card-group">
        <div class="card">
           <img class="card-img-top img-fluid" src="../assets/images/praia_rio_card.jpg" alt="Imagem de capa do card"> 
           <div class="card-body">
              <h5 class="card-title">Rio de Janeiro</h5>
              <p class="card-text">De:  <span class="texto-riscado">R$ 1800</span></p>
              <p class="card-text">Preço com desconto: R$ 1300,00</p>
              <p class="card-text"> A Cidade do Rio de Janeiro é o principal centro turístico do Brasil, e alguns de seus pontos de atração, como Pão de Açúcar e o Corcovado, tornaram-se mesmo símbolos do País. Nas Cidades do interior fluminense encontram-se atrações diversas, desde museus e parques, até a prática do alpinismo ou da caça submarina. </p>
              <p class="card-text"><small class="text-muted">Oferta válida até 05 de Agosto de 2023</small></p>
              <span class="conteudo-sobre-imagem"> Locais Paradisíacos</span>
              <a href="../compra-getCreate" class="btn btn-primary">Agendar</a>
           </div>
        </div>
        <div class="card">
           <img class="card-img-top img-fluid" src="../assets/images/praia_doforte_salvador.jpg" alt="Imagem de capa do card">
           <div class="card-body">
              <h5 class="card-title">Praia do Forte (Salvador)</h5>
              <p class="card-text">De:  <span class="texto-riscado">R$ 1950</span></p>
              <p class="card-text">Preço com desconto: R$ 1410,00</p>
              <p class="card-text">Praia do Forte é uma vila de pescadores no litoral norte da Bahia, pertinho de Salvador, que apesar do clima rústico, oferece ótima infraestrutura para os visitantes. O destino é muito procurado por causa de suas praias de águas águas quentinhas e pelo litoral cheio de piscinas naturais.</p>
              <p class="card-text"><small class="text-muted">Oferta válida até 05 de Agosto de 2023</small></p>
              <span class="conteudo-sobre-imagem"> Locais Paradisíacos</span>
              <a href="../compra-getCreate" class="btn btn-primary">Agendar</a>
           </div>
        </div>
        <div class="card">
           <img class="card-img-top img-fluid" src="../assets/images/bonito_ms_card.jpg" alt="Imagem de capa do card">
           <div class="card-body">
              <h5 class="card-title">Bonito (Mato Grosso do Sul)</h5>
              <p class="card-text">De:  <span class="texto-riscado">R$ 2500</span></p>
              <p class="card-text">Preço com desconto: R$ 1840,00</p>
              <p class="card-text">Bonito reúne um conjunto de equipes, empresas, ONGs e órgãos governamentais que buscam organizar e coordenar o ecoturismo, visando sempre a sustentabilidade local e a conservação da natureza. A cidade foi reconhecida como a capital do turismo sustentável, devido aos seus cuidados com a natureza</p>
              <p class="card-text"><small class="text-muted">Oferta válida até 05 de Agosto de 2023</small></p>
              <span class="conteudo-sobre-imagem"> Ecoturismo</span>
              <a href="../compra-getCreate" class="btn btn-primary">Agendar</a>
           </div>
        </div>
     </div>
  </main>
<!--Final do main - conteúdo principal da página de promoções baseado em cards do bootstrap-->
<!--Início do rodapé das páginas-->
  <footer>
     <div id="footer_content">
        <div id="footer_contacts">
           <a href="#" class="logo"> <img class="cabecalho_logo" src="../assets/images/logo_nav.png" alt="Logo da Vogue"> </a>
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