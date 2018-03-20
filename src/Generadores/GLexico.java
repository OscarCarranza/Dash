/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Generadores;

import java.io.File;

/**
 *
 * @author ambarsuarez
 */
public class GLexico {
    public static void main(String[] args){
        File f = new File ("src//dash//A_Lexico.jflex");
        jflex.Main.generate(f);
    }
    
}
