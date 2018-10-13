/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

/**
 *
 * @author Ana
 */
public class Cadastropessoas {
    private String Nome;
    private String CPF;
    private String Email;
    private String Telefone;
    public void setDados(String Nome,String CPF, String Email, String Telefone){
     this.setNome(Nome);
     this.setCPF(CPF);
     this.setEmail(Email);
     this.setTelefone(Telefone);

    
}

    public String getNome() {
        return Nome;
    }

    public void setNome(String Nome) {
        this.Nome = Nome;
    }

    public String getCPF() {
        return CPF;
    }

    public void setCPF(String CPF) {
        this.CPF = CPF;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getTelefone() {
        return Telefone;
    }

    public void setTelefone(String Telefone) {
        this.Telefone = Telefone;
    }
}
