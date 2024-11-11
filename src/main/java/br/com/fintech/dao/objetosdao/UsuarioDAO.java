package br.com.fintech.dao.objetosdao;

import br.com.fintech.dao.Conexao;
import br.com.fintech.model.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDAO {
    private PreparedStatement preparoSQL=null;
    private ResultSet respostaSQL=null;
    private Connection conexao;

    public void cadastrar(Usuario usuario) {
        conexao = Conexao.getInstancia().getConexao();
        try {
            preparoSQL = conexao.prepareStatement("INSERT INTO T_USUARIO(usuario,email,senha) VALUES(?,?,?)");
            preparoSQL.setString(1, usuario.getUsuario());
            preparoSQL.setString(2, usuario.getEmail());
            preparoSQL.setString(3, usuario.getSenha());
            preparoSQL.executeUpdate();
        } catch (Exception excecao) {
            excecao.printStackTrace();
        } finally {
            try {
                conexao.close();
                preparoSQL.close();
            } catch (Exception excecao) {
                excecao.printStackTrace();
            }
        }
    }
    public boolean buscarUsuario(Usuario usuario){
        conexao=Conexao.getInstancia().getConexao();
        boolean retorno=false;
        try{
            preparoSQL=conexao.prepareStatement("SELECT usuario FROM T_USUARIO WHERE usuario=?");
            preparoSQL.setString(1, usuario.getUsuario());
            respostaSQL=preparoSQL.executeQuery();
            if(respostaSQL.next()){
                retorno=true;
            }
        }catch(Exception excecao){
            excecao.printStackTrace();
        }finally{
            try{
                conexao.close();
                preparoSQL.close();
                respostaSQL.close();
            }catch(Exception excecao){
                excecao.printStackTrace();
            }
        }
        return retorno;
    }
    public boolean buscarEmail(Usuario usuario){
        conexao=Conexao.getInstancia().getConexao();
        boolean retorno=false;
        try{
            preparoSQL=conexao.prepareStatement("SELECT email FROM T_USUARIO WHERE email=?");
            preparoSQL.setString(1,usuario.getEmail());
            respostaSQL=preparoSQL.executeQuery();
            if(respostaSQL.next()){
                retorno=true;
            }
        }catch(Exception excecao){
            excecao.printStackTrace();
        }finally{
            try{
                conexao.close();
                preparoSQL.close();
                respostaSQL.close();
            }catch(Exception excecao){
                excecao.printStackTrace();
            }
        }
        return retorno;
    }
    public boolean buscarEhCadastrado(Usuario usuario){
        boolean retorno=buscarUsuario(usuario);
        if(retorno){
            return retorno;
        }else{
            retorno=buscarEmail(usuario);
        }
        return retorno;
    }
}
