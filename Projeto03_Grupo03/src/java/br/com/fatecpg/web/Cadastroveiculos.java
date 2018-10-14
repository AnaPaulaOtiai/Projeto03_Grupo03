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
public class Cadastroveiculos {
    private String Placa;
    private String Marca;
    private String Modelo;
    private String Cor;
    public void setDados(String Placa,String Marca, String Modelo, String Cor){
     this.setPlaca(Placa);
     this.setMarca(Marca);
     this.setModelo(Modelo);
     this.setCor(Cor);
     
    }

    public String getPlaca() {
        return Placa;
    }

    public void setPlaca(String Placa) {
        this.Placa = Placa;
    }

    public String getMarca() {
        return Marca;
    }

    public void setMarca(String Marca) {
        this.Marca = Marca;
    }

    public String getModelo() {
        return Modelo;
    }

    public void setModelo(String Modelo) {
        this.Modelo = Modelo;
    }

    public String getCor() {
        return Cor;
    }

    public void setCor(String Cor) {
        this.Cor = Cor;
    }
    
    
}
