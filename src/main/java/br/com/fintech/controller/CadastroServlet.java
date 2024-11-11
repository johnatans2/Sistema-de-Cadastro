package br.com.fintech.controller;

import br.com.fintech.dao.objetosdao.UsuarioDAO;
import br.com.fintech.factory.DaoFactory;
import br.com.fintech.model.Usuario;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/cadastrar")
public class CadastroServlet extends HttpServlet {
    private UsuarioDAO instanciaUsuario;
    @Override
    public void init(ServletConfig config){
        instanciaUsuario=DaoFactory.getUsuarioDAO();
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String user=request.getParameter("usuario");
            String email=request.getParameter("email");
            String senha=request.getParameter("senha");
            Usuario usuario = new Usuario(user,email,senha);
            if(instanciaUsuario.buscarUsuario(usuario)){
                request.setAttribute("mensagemUsuario", "O usuário já está cadastrado");
                request.getRequestDispatcher("cadastro.jsp").forward(request, response);
            }else {
                if(instanciaUsuario.buscarEmail(usuario)){
                    request.setAttribute("mensagemEmail","O e-mail já está cadastrado");
                    request.getRequestDispatcher("cadastro.jsp").forward(request, response);
                }else {
                    instanciaUsuario.cadastrar(usuario);
                    System.out.println("Usuário Cadastrado!");
                    request.getRequestDispatcher("pages/dashboard.jsp").forward(request,response);
                }
            }
        }catch(Exception excecao){
            excecao.printStackTrace();
            System.out.println("Erro ao cadastrar...");
        }
    }
}
