package Generadores;

import java.io.File;

public class GLexico_Mac 
{
    public static void main(String[] args) 
    {
        String path="src/dash/A_Lexico.jflex";
        generarLexer(path);
    } 
    
    public static void generarLexer(String path)
    {
        File file=new File(path);
        jflex.Main.generate(file);
    } 
}
