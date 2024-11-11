package br.com.fintech.model;

public class Usuario{
    private String usuario;
    private String email;
    private String senha;

    public Usuario(String usuario,String email,String senha){
        this.usuario=usuario;
        this.email=email;
        this.senha=senha;
    }

    public String getUsuario(){
        return this.usuario;
    }
    public String getEmail(){
        return this.email;
    }
    public String getSenha(){
        return this.senha;
    }
}
