package Nodos;


import dash.Sintactico;
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
                System.out.println("INF EXP = " + infixExp);
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
                System.out.println("POSTFIX = " + finalString);
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
            for(int i = 0; i < finalString.length(); i++){
                

                // concat to id
                if(finalString.charAt(i) != ' ' && !isOperator(Character.toString(finalString.charAt(i)))){
                    id += finalString.charAt(i);
                }
                
                //operator
                else if(isOperator(Character.toString(finalString.charAt(i)))){
                   String s1 = st.pop().toString();
                   String s2 = st.pop().toString();
                   
                   Cuadruplo c = new Cuadruplo(Character.toString(finalString.charAt(i)),s1,s2,"t_" + Sintactico.contTemp++);
                   Sintactico.cuads.add(c);
                   st.push("t_" + Sintactico.contTemp);
                   
                }
                else if(finalString.charAt(i) == ' ' && !id.isEmpty()){
                    st.push(id);
                    id = "";
                }
            }
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