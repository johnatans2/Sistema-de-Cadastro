<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <title>Dashboard | iFinance</title>
    <meta name="viewport" content="widith=device-width,initial-scale=1">
    <meta name="keywords" content="iFood,iFinance,Gestão Financeira,">
    <meta name="author" content="FIAP - Johnatan Henrique">
    <meta name="description" content="Gerencie o seu negócio de maneira simples e eficaz com o iFinance!">
    <link rel="icon" href="../images/utilizaveis/icones/ifood-icon.png">
    <link rel="stylesheet" href="../../styles/variaveis.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="../../styles/base-header.css">
    <link rel="stylesheet" href="../../styles/state-header.css">
    <link rel="stylesheet" href="../../styles/extrato.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"
        defer></script>
    <script src="../../script/extrato.js" defer></script>
</head>

<body>
    <header class="p-2 header">
        <div class="container">
            <section class="navbar navbar-expand-lg">
                <section class="mx-3">
                    <a class="navbar-brand" href="../index.html">
                        <img src="../../images/imagens-usadas/Logo.png" alt="Logo Fintech">
                    </a>
                </section>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <nav class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav nav-underline">
                        <li class="nav-item mx-3">
                            <a class="nav-link" href="../index.html">Visão Geral</a>
                        </li>
                        <li class="nav-item mx-3">
                            <a class="nav-link active" href="#">Extrato</a>
                        </li>
                        <li class="nav-item mx-3">
                            <a class="nav-link" href="#">Análises</a>
                        </li>
                        <li class="nav-item mx-3">
                            <a class="nav-link" href="#">Relatórios</a>
                        </li>
                    </ul>
                    <!-- Ícones alinhados à direita -->
                    <div class="navbar-icons">
                        <i class="bi bi-gear-fill"></i>
                        <i class="bi bi-bell"></i>
                        <i class="bi bi-person-circle"></i>
                    </div>
                </nav>
            </section>
        </div>
    </header>
    
    <main>
        <!-----------BARRA PESQUISA E LOGO------------>
        <section class="container text-center my-3">
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