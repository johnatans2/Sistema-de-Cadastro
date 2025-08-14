<%@page language="Java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Fintech</title>
        <%@include file="pages/modularizacao-html/modulo-head.html"%>
        <link href="styles/estilo-index.css" rel="stylesheet">
    </head>
    <body class="body">
    <header class="p-4">
        <div class="container-lg">
            <section class="navbar navbar-expand-md d-flex justify-content-around">
                <section class="">
                    <a href="index.jsp"><img src="images/imagens-usadas/logo.png" alt="Logo Fintech"></a>
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
                                <a class="nav-link hover-link" href="#">O Que é o Fintech?</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link hover-link" href="#">Novidades</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link hover-link" href="#">Suporte</a>
                            </li>
                        </ul>
                    </nav>
                </section>
                <section>
                    <ul class="navbar-nav navbar-collapse collapse" id="navbarSupportedContent">
                        <li class="nav-item me-2">
                            <a href="cadastro.jsp" class="nav-link hover-link logar">Login</a>
                        </li>
                        <li class="nav-item">
                            <a href="cadastro.jsp" class="btn hover-link registrar">Comece Já!</a>
                        </li>
                    </ul>
                </section>
            </section>
        </div>
    </header>
    <main class="main">
        <section class="container">
            <section class="calltoaction">
                <h1 class="mb-5"><strong>Fintech</strong>, o seu gestor de finanças online!</h1>
                <p class="strong-secundario mb-5">Gerencie suas finanças de maneira fácil, rápida, e melhor, gratuita</p>
                <a href="cadastro.jsp" class="btn hover-link registrar">Experimente agora</a>
            </section>
        </section>
    </main>
    </body>
</html>
