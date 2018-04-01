/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Nodos;

import java.util.ArrayList;

/**
 *
 * @author dariovillalta
 */
public class Nodo {
    
    String Tipo; // Main, Funcion, If, While, etc
    String value; // nombre metodo, nombre variable
    ArrayList<Nodo> hijos = new ArrayList<Nodo>();

    public Nodo(String Tipo, String value) {
        this.Tipo = Tipo;
        this.value = value;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public ArrayList<Nodo> getHijos() {
        return hijos;
    }

    public void setHijos(ArrayList<Nodo> hijos) {
        this.hijos = hijos;
    }
    
    
}
