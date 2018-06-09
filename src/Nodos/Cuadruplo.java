
package Nodos;

public class Cuadruplo {
    String operacion;
    String argumento1;
    String argumento2;
    String resultado;

    public Cuadruplo(String operacion,String argumento1, String argumento2, String resultado) {
        this.operacion = operacion;
        this.argumento1 = argumento1;
        this.argumento2 = argumento2;
        this.resultado = resultado;
    }

    public Cuadruplo(String operacion, String argumento1, String resultado) {
        this.operacion = operacion;
        this.argumento1 = argumento1;
        this.resultado = resultado;
    }

    public Cuadruplo(String operacion, String argumento1) {
        this.operacion = operacion;
        this.argumento1 = argumento1;
    }

    public String getOperacion() {
        return operacion;
    }

    public void setOperacion(String operacion) {
        this.operacion = operacion;
    }

    public String getArgumento1() {
        return argumento1;
    }

    public void setArgumento1(String argumento1) {
        this.argumento1 = argumento1;
    }

    public String getArgumento2() {
        return argumento2;
    }

    public void setArgumento2(String argumento2) {
        this.argumento2 = argumento2;
    }

    public String getResultado() {
        return resultado;
    }

    public void setResultado(String resultado) {
        this.resultado = resultado;
    }   

    @Override
    public String toString() {
        String form = "%-15s %-15s %-15s %-15s";
        return String.format(form, operacion, argumento1, argumento2, resultado);
    }
    
    
}
