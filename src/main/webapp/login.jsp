<%@page language="Java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Login</title>
    <%@include file="pages/modularizacao-html/modulo-head.html"%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="styles/estilo-login.css">
    <!-- Importando ícones do Bootstrap para os $ -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <!-- Bloco da Esquerda (Login) -->
    <div class="left-block">
        <img src="images/imagens-usadas/logo.png" alt="Logo Fintech" class="logo">
        <h2>Suas finanças estão esperando por você!</h2>
        <form class="login-form">

            <input type="text" id="email" placeholder="E-mail ou usuário">

            <input type="password" id="senha" placeholder="Senha">
            <a href="#" class="forgot-password">Esqueceu sua senha?</a>
            <button type="submit" class="btn-login">Iniciar sessão</button>
        </form>
        <p class="register">Não é cadastrado? <a href="#">Comece sua gestão agora!</a></p>
    </div>

    <!-- Bloco da Direita (Imagens e texto) -->
    <!--div class="right-block">
        <h1>O dinheiro na <span class="highlight">palma da sua mão.</span></h1>
        <div class="icons">
            <i class="bi bi-pie-chart"></i>
            <i class="bi bi-currency-dollar"></i>
            <i class="bi bi-bar-chart"></i>
        </div>
    </!div-->
</div>
</body>
</html>