/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Nodos;

/**
 *
 * @author dariovillalta
 */
public class Tabla {
    String id;
    String tipo;
    String ambito;
    int profundidad;
    int direccion;
    int param;
    String register;

    //param = 1 si es un parametro
    public Tabla(String id, String tipo, String ambito, int profundidad, int direccion, int param, String register) {
        this.id = id;
        this.tipo = tipo;
        this.ambito = ambito;
        this.profundidad = profundidad;
        this.direccion = direccion;
        this.param = param;
        this.register = register;
    }

    public int getParam() {
        return param;
    }

    public void setParam(int param) {
        this.param = param;
    }

    public String getRegister() {
        return register;
    }

    public void setRegister(String register) {
        this.register = register;
    }

   

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getAmbito() {
        return ambito;
    }

    public void setAmbito(String ambito) {
        this.ambito = ambito;
    }

    public int getProfundidad() {
        return profundidad;
    }

    public void setProfundidad(int profundidad) {
        this.profundidad = profundidad;
    }

    public int getDireccion() {
        return direccion;
    }

    public void setDireccion(int direccion) {
        this.direccion = direccion;
    }
    
    @Override
    public String toString() {
        String form = "%-20s %-30s %-30s %-5s %-5s %-5s";
        return String.format(form, id, tipo, ambito, profundidad, (param == 1) ? "X" : "", register);
    }
}