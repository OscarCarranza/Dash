
package Nodos;

import java.util.Stack;

public class Calcu {
    
    private String expression;
    private Stack stack_op;
    private Stack stack_operands;
    private char[] ops = {'(','+','-','*','/',')'};

    public Calcu(String expression) {
        this.expression = expression;
        stack_op = new Stack();
        stack_operands = new Stack();
        ClearSpaces();
        
    }
    
    public void PostFixConv(){
        
        for(int i = 0; i < expression.length()-1; i++){
            char currChar = expression.charAt(i);
            
        }
    }
    
    public void ClearSpaces(){
       expression.replaceAll(" ", "");
    }
    
    
    
    
    
}
