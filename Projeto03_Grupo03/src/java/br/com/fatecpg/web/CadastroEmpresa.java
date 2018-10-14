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
    private String RazãoSocial;
    private String CNPJ;
    private String WebSite;
    private String Telefone;
    public void setDados(String Nome,String RazãoSocial,String CNPJ,String WebSite,String Telefone){
     this.setNome(Nome);
     this.setRazãoSocial(RazãoSocial);
     this.setCNPJ(CNPJ);
     this.setWebSite(WebSite);
     this.setTelefone(Telefone);

   }

    public String getNome() {
        return Nome;
    }

    public void setNome(String Nome) {
        this.Nome = Nome;
    }

    public String getRazãoSocial() {
        return RazãoSocial;
    }

    public void setRazãoSocial(String RazãoSocial) {
        this.RazãoSocial = RazãoSocial;
    }

    public String getCNPJ() {
        return CNPJ;
    }

    public void setCNPJ(String CNPJ) {
        this.CNPJ = CNPJ;
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