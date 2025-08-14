<%@page language="Java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Extrato</title>
    <%@include file="pages/modularizacao-html/modulo-head.html"%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="script/extrato.js" defer></script>
    <link href="styles/estilo-extrato.css" rel="stylesheet">
</head>
<body class="body">
<header class="p-5 header">
    <div class="container">
        <section class="navbar navbar-expand-lg d-flex justify-content-evenly">
            <section>
                <a class="navbar-brand" href="index.jsp">
                    <img src="images/imagens-usadas/logo.png" alt="Logo Fintech">
                </a>
            </section>
            <section>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <nav class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav nav-underline">
                        <li class="nav-item">
                            <a class="nav-link hover-link" href="">Visão Geral</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link hover-link" href="#">Extrato</a>
                        </li>
                    </ul>
                </nav>
            </section>
            <!-- Ícones alinhados à direita -->
            <section>
                <div class="navbar-icons collapse navbar-collapse" id="navbarSupportedContent">
                    <i class="bi bi-gear-fill"></i>
                    <i class="bi bi-bell"></i>
                    <i class="bi bi-person-circle"></i>
                </div>
            </section>
        </section>
    </div>
</header>
<main>
    <!-----------BARRA PESQUISA E LOGO------------>
    <section class="container text-center my-4">
        <div class="row align-items-center">
            <!-- Imagem à esquerda -->
            <section class="col-lg-2 col-md-3 col-sm-4 text-center">
            </section>

            <!-- Barra de pesquisa e botão Pesquisar -->
            <section class="col-lg-6  col-md-6 col-sm-8">
                <div class="search-container">
                    <form class="search-form" role="search">
                        <!-- Ícone de lupa e barra de pesquisa -->
                        <div class="input-container">
                            <button class="search-icon" type="submit">
                                <i class="fas fa-search"></i>
                            </button>
                            <input class="search-bar" type="search" placeholder="Pesquise o dado que deseja" aria-label="Search">
                        </div>
                    </form>
                </div>
            </section>

            <!-- Botão de filtro com ícone -->
            <section class="col-lg-2 col-md-3 col-sm-12 filter-buttons">
                <button class="btn filter-btn">
                    <i class="fa fa-filter"></i> <!-- Ícone do filtro -->
                    Filtrar
                </button>
            </section>
            <!--Fim botão filtro-->


            <!-- botão para selecionar data -->
            <section class="col-lg-2  col-md-3 col-sm-12">
                <input type="date" class="form-control">
            </section>
        </div>
    </section>
    <!-- FIM botão selecionar data -->


    <!--Início Tabela-->


    <section class="table-responsive">
        <table id="financeTable" class="table table-striped table-bordered table-hover">
            <thead class="text-center">
            <tr>
                <th>ÍCONE</th>
                <th>DATA E HORA</th>
                <th>ENTRADAS</th>
                <th>SAÍDAS</th>
                <th>SALDO FINAL</th>
            </tr>
            </thead>
            <tbody class="text-center">
            <tr>
                <th><i class="bi bi-graph-down-arrow"></i></th>
                <td>13/06/2024 21:57</td>
                <td>R$00,00</td>
                <td>R$340,00</td>
                <td>R$342.345,59</td>
            </tr>
            <tr>
                <th><i class="bi bi-graph-down-arrow"></i></th>
                <td>13/06/2024 22:15</td>
                <td>R$00,00</td>
                <td>R$120,00</td>
                <td>R$342.225,25</td>
            </tr>
            <tr>
                <th><i class="bi bi-graph-up-arrow"></i></th>
                <td>13/06/2024 22:31</td>
                <td>R$1614,00</td>
                <td>R$00,00</td>
                <td>R$183.253,70</td>
            </tr>
            <tr>
                <th><i class="bi bi-graph-up-arrow"></i></th>
                <td>13/06/2024 23:05</td>
                <td>R$1230,34</td>
                <td>R$00,00</td>
                <td>R$182.943,56</td>
            </tr>
            <tr>
                <th><i class="bi bi-graph-up-arrow"></i></th>
                <td>12/06/2024 13:23</td>
                <td>R$230,10</td>
                <td>R$00,00</td>
                <td>R$182.633,56</td>
            </tr>
            <tr>
                <th><i class="bi bi-graph-up-arrow"></i></th>
                <td>12/06/2024 12:55</td>
                <td>R$310,00</td>
                <td>R$00,00</td>
                <td>R$181.403,22</td>
            </tr>
            <tr>
                <th><i class="bi bi-graph-down-arrow"></i></th>
                <td>12/06/2024 12:48</td>
                <td>R$00,00</td>
                <td>R$38.900,00</td>
                <td>R$179.789,22</td>
            </tr>
            <tr>
                <th><i class="bi bi-graph-up-arrow"></i></th>
                <td>12/06/2024 12:30</td>
                <td>R$645,80</td>
                <td>R$00,00</td>
                <td>R$178.889,70</td>
            </tr>


            </tbody>
        </table>
    </section>

    <!--FIM TABELA-->

</main>
</body>

</html>