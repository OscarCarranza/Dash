/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dash;

/**
 *
 * @author dariovillalta
 */
public class MyError {
    String lexema, tipo, descripcion;
    int linea, columna;
    
    public MyError (String lexema, int linea, int columna, String tipo, String descripcion){
        this.lexema = lexema;
        this.tipo = tipo;
        this.descripcion = descripcion;
        this.linea = linea;
        this.columna = columna;
    }
}
