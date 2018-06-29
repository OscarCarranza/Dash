package Nodos;


import dash.Compilador;
import static dash.Compilador.cuads;
import dash.Sintactico;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Stack;

public class Infix2Postfix {
	
	private Stack<String> stack;
	private String infixExp;
	private String postfixExp = "";
	public String finalString;
        
	public Infix2Postfix(String exp){
		
		String str = "";
		infixExp = exp;
		stack = new Stack<String>();
                String id = "";
		
		for (int i=0;i<infixExp.length();i++){
			str = infixExp.substring(i,i+1);
                        
			if(!isOperator(str)){
                            id += str;
                        }
			else if (isOperator(str)){
                                postfixExp += " " + id;
                                id = "";
				if (stack.isEmpty()){
					stack.push(str);
				}
				else{
					String stackTop = stack.peek();
					while (getPrecedence(stackTop,str).equals(stackTop)&& !(stack.isEmpty())){
						postfixExp += " " + stack.pop();
						if (!(stack.isEmpty()))
							stackTop = stack.peek();
                                                
					}
					stack.push(str);
				}
			}
                        
		}
                
                stack.push(id);
		while(!(stack.isEmpty()))
			postfixExp += " " + stack.pop();
                finalString = postfixExp;
	}
	
	private boolean isOperator(String ch){
		
		String operators = "*/+-";
		if (operators.indexOf(ch) != -1)
			return true;
		else
			return false;
	}
	private String getPrecedence(String op1, String op2){
		
		String multiplicativeOps = "*/%";
		String additiveOps = "+-";
		
		if ((multiplicativeOps.indexOf(op1) != -1) && (additiveOps.indexOf(op2) != -1))
			return op1;
		else if ((multiplicativeOps.indexOf(op2) != -1) && (additiveOps.indexOf(op1) != -1))
			return op2;
		else if((multiplicativeOps.indexOf(op1) != -1) && (multiplicativeOps.indexOf(op2) != -1))
			return op1;
		else 
			return op1;
	}	
        
        public void CodigoIntermedio(){
            Stack st = new Stack();
            String id = "";
            System.out.println("String -- " + finalString);
            for(int i = 0; i < finalString.length(); i++){
                
                // concat to id
                if(finalString.charAt(i) != ' ' && !isOperator(Character.toString(finalString.charAt(i)))){
                    id += finalString.charAt(i);
                }
                
                //operator
                else if(isOperator(Character.toString(finalString.charAt(i)))){
                   String s1 = st.pop().toString();
                   String s2 = st.pop().toString();
                   
                   if(s1.contains("(") && s1.contains(")")){
                       String params[] = isFunc(s1);
                       Compilador.cuads.add(new Cuadruplo("callFunc",params[0],params[1],"t_" + Compilador.contTemp++));
                       Compilador.cuads.add(new Cuadruplo(Character.toString(finalString.charAt(i)),s2,"t_" + (Compilador.contTemp-1),"t_" + Compilador.contTemp++));
                   }
                   else if(s2.contains("(") && s2.contains(")")){
                       String params[] = isFunc(s2);
                       Compilador.cuads.add(new Cuadruplo("callFunc",params[0],params[1],"t_" + Compilador.contTemp++));
                       Compilador.cuads.add(new Cuadruplo(Character.toString(finalString.charAt(i)),s2,"t_" + (Compilador.contTemp-1),"t_" + Compilador.contTemp++));

                   }
                   
                   else{
                      Cuadruplo c = new Cuadruplo(Character.toString(finalString.charAt(i)),s2,s1,"t_" + Compilador.contTemp++);
                      Compilador.cuads.add(c); 
                   }
                   
                   st.push("t_" + (Compilador.contTemp-1));
                   
                }
                else if(finalString.charAt(i) == ' ' && !id.isEmpty()){
                    st.push(id);
                    id = "";
                }
            }
        }
        
        
        private String[] isFunc(String func){
         String params[] = new String[2];
         int contParams = 0;
         String pars = "";
         for(int i = 0; i < func.length(); i++){
             switch (func.charAt(i)) {
                 case '(':
                     params[0] = (func.substring(0, i));
                     contParams = i+1;
                     break;
                 case ',':
                     pars += func.substring(contParams,i);
                     pars += "|";
                     contParams = i+1;
                     break;
                 case ')':
                     pars += func.substring(contParams,i);
                     pars += "|";
                     break;
                 default:
                     break;
             }
         }
         params[1] = pars;
         return params;
         
    }
        
        private int operation(char c, int i1, int i2){
            
            switch (c) {
                case '+':
                    return i1+i2;
                case '-':
                    return i1-i2;
                case '*':
                    return i1*i2;
                case '/':
                    return i1/i2;
                default:
                    return 0;
            }
        }
        
}