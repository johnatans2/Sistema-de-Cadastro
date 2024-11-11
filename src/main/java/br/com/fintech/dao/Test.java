package br.com.fintech.dao;

import br.com.fintech.factory.DaoFactory;
import br.com.fintech.model.Usuario;

public class Test {
    public static void main(String[] args) {
        var usuario=new Usuario("john","JC@1","123");
        var instanciaSQLUsuario=DaoFactory.getUsuarioDAO();
        instanciaSQLUsuario.cadastrar(usuario);
    }
}
