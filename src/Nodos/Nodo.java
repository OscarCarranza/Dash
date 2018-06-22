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
    
    public String Tipo; // Main, Funcion, If, While, etc
    public String value; // nombre metodo, nombre variable
    public ArrayList<Nodo> hijos = new ArrayList<Nodo>();

    public Nodo(String Tipo, String value) {
        this.Tipo = Tipo;
        this.value = value;
    }

    @Override
    public String toString() {
        return "Nodo{" + "Tipo=" + Tipo + ", value=" + value + ", hijos=" + hijos + '}';
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
    
    public void addHijo(Nodo hijo) {
        this.hijos.add(hijo);
    }
    
    public Nodo getHijoAt(int i){
        return hijos.get(i);
    }
    
    public boolean hasHijos(){
        if(hijos.isEmpty())
            return false;
        else
            return true;
    }
    
    public void print(int level) {
        for (int i = 1; i < level; i++) {
            System.out.print("\t");
        }
        System.out.println(Tipo);
        for (Nodo child : hijos) {
            child.print(level + 1);
        }
    }
}
