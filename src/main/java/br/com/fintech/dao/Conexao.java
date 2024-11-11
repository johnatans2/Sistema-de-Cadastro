package br.com.fintech.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public final class Conexao {
    private static Conexao conectado;
    private final String URL="jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL";
    private final String USUARIO="rm558639";
    private final String SENHA="261289";

    private String getURL(){
        return URL;
    }
    private String getUSUARIO(){
        return USUARIO;
    }
    private String getSENHA(){
        return SENHA;
    }

    public static Conexao getInstancia(){
        if(conectado == null){
            conectado = new Conexao();
        }
        return conectado;
    }
    public Connection getConexao(){
        Connection conexao=null;
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conexao=DriverManager.getConnection(getURL(),getUSUARIO(),getSENHA());
        }catch(Exception excecao){
            excecao.printStackTrace();
        }
        return conexao;
    }
}
