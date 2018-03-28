/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Generadores;

/**
 *
 * @author ambarsuarez
 */
public class Main_Cup {
    public static void main(String[] args){
        String params [] = {"-destdir", "src//dash","-symbols","Simbolos","-parser", 
            "Sintactico","src//dash//A_Sintactico.cup"};
            try{
            java_cup.Main.main(params);
        }catch(Exception e){
            System.out.println(e);
        }
        
    }
    
}
