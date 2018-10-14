/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

/**
 *
 * @author Peteron Hernandez
 */

import java.util.ArrayList;

 
    public class Me {
        
    private static final ArrayList<CadastroEmpresa> CadastroEmpresa = new ArrayList<>();
    public static ArrayList<CadastroEmpresa> getCadastroempresa(){
        if(CadastroEmpresa.isEmpty()){
            CadastroEmpresa c1 = new CadastroEmpresa();
            c1.setDados("Empresa Fulano","RazãoSocial","número do CNPJ","empresafulano@site.com","(13)99765-4878");
            CadastroEmpresa.add(c1);
            CadastroEmpresa c2 = new CadastroEmpresa();
            c2.setDados("Empresa Fulano","RazãoSocial","número do CNPJ","empresafulano@site.com","(13)99765-4878");
            CadastroEmpresa.add(c2);
            CadastroEmpresa c3 = new CadastroEmpresa();
            c3.setDados("empresa Fulano","RazãoSocial","número do CNPJ","empresafulano@site.com","(13)99765-4878");
            CadastroEmpresa.add(c3);
            
        }
       return CadastroEmpresa; 
}
     }
  


