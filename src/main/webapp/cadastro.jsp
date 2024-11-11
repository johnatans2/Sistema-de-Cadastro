<%@page language="Java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<html>
<head>
    <title>Cadastrar-se</title>
    <%@include file="pages/modularizacao-html/modulo-head.html"%>
    <link href="styles/estilo-paginaCadastro.css" rel="stylesheet">
</head>
<body>
<header class="header d-flex align-items-center">
    <div class="container">
        <a href="index.jsp"><img src="images/imagens-usadas/logo.png" alt="Logo Fintech"></a>
    </div>
</header>
<main>
    <div class="d-flex background-icones">
        <section class="d-flex calltoaction">
            <section class="chamada-cadastro">
                <h1 class="mb-5">Chega de perder o controle do seu dinheiro. <strong>Com o <span
                        class="strong-secundario">Fintech</span>, isso nunca mais será problema!</strong></h1>
                <p class="strong-secundario">Gerencie suas finanças de maneira fácil, rápida, e melhor, gratuita.
                </p>
            </section>
        </section>
        <section class="d-flex cadastro">
            <section class="form-cadastro">
                <h1 class="mb-5">Comece agora e tenha <strong class="strong-secundario">o dinheiro na palma da sua mão</strong></h1>
                <form method="post" action="cadastrar">
                    <input type="email" class="form-control mb-3" placeholder="E-mail" name="email" required>
                    <c:if test="${not empty mensagemEmail}"><p class="text-danger">${mensagemEmail}</p></c:if>
                    <input type="text" class="form-control mb-3" placeholder="Usuário" name="usuario" required>
                    <c:if test="${not empty mensagemUsuario}"><p class="text-danger">${mensagemUsuario}</p></c:if>
                    <input type="password" class="form-control mb-3" placeholder="Senha" name="senha" required>
                    <div class="d-flex justify-content-center my-4">
                        <input type="checkbox" class="form-check-input me-2" required>
                        <label>Li e concordo com os <strong><a href="#" class="strong-secundario">termos de uso</a></strong></label>
                    </div>
                    <div class="d-flex justify-content-center">
                        <button type="submit" class="btn registrar rounded-4">Iniciar gessão</button>
                    </div>
                </form>
            </section>
        </section>
    </div>
</main>
</body>
</html>