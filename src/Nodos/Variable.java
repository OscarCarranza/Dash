/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Nodos;

/**
 *
 * @author Nita
 */
public class Variable {
    
    String name;
    String type;
    String[] parameters;
    
    public Variable(String name, String type){
        this.name = name;
        this.type = type;
    }
    
    public Variable(String name, String type, String[] parameters) {
        this.name = name;
        this.type = type;
        this.parameters = parameters;
    }
    
    
    
    
    
}
