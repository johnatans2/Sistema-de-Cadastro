package br.com.fintech.factory;

import br.com.fintech.dao.objetosdao.UsuarioDAO;

public class DaoFactory {
    public static UsuarioDAO getUsuarioDAO() {
        return new UsuarioDAO();
    }
}
