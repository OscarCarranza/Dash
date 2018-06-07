/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dash;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.StringReader;

/**
 *
 * @author dariovillalta
 */
public class Dash {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
//        String path = "./Lexer.flex";
//        generateLexer(path);
        BufferedReader br;
        String everything = "";
        try {
            br = new BufferedReader(new FileReader("./file.txt"));
            StringBuilder sb = new StringBuilder();
            String line = br.readLine();

            while (line != null) {
                sb.append(line);
                sb.append(System.lineSeparator());
                line = br.readLine();
            }
            everything = sb.toString();
            Analizador_Lexico lexico = new Analizador_Lexico(new BufferedReader(new StringReader(everything)));
            System.out.println(everything);
            br.close();
        } catch(Exception e){
        } finally {
            //br.close();
        }
    }
    
    public static void generateLexer(String path){
       File file = new File(path);
       //JFlex.Main.generate(file);
    }
    
}
