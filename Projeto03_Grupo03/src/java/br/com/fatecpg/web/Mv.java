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
public class Mv {
    
private static final ArrayList<Cadastroveiculos> Cadastroveiculos = new ArrayList<>();
    public static ArrayList<Cadastroveiculos> getCadastroveiculos(){
        if(Cadastroveiculos.isEmpty()){
            Cadastroveiculos c1 = new Cadastroveiculos();
            c1.setDados("","","","");
            Cadastroveiculos.add(c1);
            Cadastroveiculos c2 = new Cadastroveiculos();
            c2.setDados("","","","");
            Cadastroveiculos.add(c2);
            Cadastroveiculos c3 = new Cadastroveiculos();
            c3.setDados("","","","");
            Cadastroveiculos.add(c3);
            
        }
       return Cadastroveiculos;     
    }
}