/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;


/**
 *
 * @author Peterson
 */
public class CadastroEmpresa {
    private String Nome;
    private String Cnpj;
    private String WebSite;
    private String Telefone;
    public void setDados(String Nome,String Cnpj, String Email, String Telefone){
     this.setNome(Nome);
     this.setCPF(Cnpj);
     this.setWebSite(Email);
     this.setTelefone(Telefone);

   }

    public String getNome() {
        return Nome;
    }

    public void setNome(String Nome) {
        this.Nome = Nome;
    }

    public String getCnpj() {
        return Cnpj;
    }

    public void setCPF(String CPF) {
        this.Cnpj = Cnpj;
    }

    public String getWebSite() {
        return WebSite;
    }

    public void setWebSite(String WebSite) {
        this.WebSite = WebSite;
    }

    public String getTelefone() {
        return Telefone;
    }

    public void setTelefone(String Telefone) {
        this.Telefone = Telefone;
    }
}
