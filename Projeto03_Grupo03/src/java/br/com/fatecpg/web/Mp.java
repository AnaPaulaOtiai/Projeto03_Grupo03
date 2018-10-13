/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

import java.util.ArrayList;

/**
 *
 * @author Ana
 */
public class Mp {
    private static final ArrayList<Cadastropessoas> Cadastropessoa = new ArrayList<>();
    public static ArrayList<Cadastropessoas> getCadastroPessoas(){
        if(Cadastropessoa.isEmpty()){
            Cadastropessoas c1 = new Cadastropessoas();
            c1.setDados("Fulano","número do CPF","fulano@site.com","(13)99765-4878");
            Cadastropessoa.add(c1);
            Cadastropessoas c2 = new Cadastropessoas();
            c2.setDados("Fulano","número do CPF","fulano@site.com","(13)99765-4878");
            Cadastropessoa.add(c2);
            Cadastropessoas c3 = new Cadastropessoas();
            c3.setDados("Fulano","número do CPF","fulano@site.com","(13)99765-4878");
            Cadastropessoa.add(c3);
            
        }
       return Cadastropessoa;     
    }

   
}
  
