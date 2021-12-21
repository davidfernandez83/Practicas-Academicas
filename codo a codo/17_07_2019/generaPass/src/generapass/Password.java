/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package generapass;


/**
 *
 * @author Navegador
 */
public class Password {
    private final static int LONG_DEF = 8;
    private int longitud;
    private String contraseña;
    
    public int getLongitud(){
        return longitud;
    }
    public void setLongitud(longitud){
        this.longitud = longitud;
    }
    
    public String getContraseña(){
        return contraseña;
    }
    
    public String generaPassword(){
        String password="";
        for(int i=0;i<longitud;i++){
            int eleccion = ((int) Math.floor(Math.random()*3+1));
            if(eleccion==1){
                char minusculas = (char)(int)Math.floor(Math.random()*(123-97)+97);
                password+=minusculas;
            }else{
                if(eleccion==2){
                    char mayusculas = (char)(int)Math.floor(Math.random()*(91-65)+65);
                    password+=mayusculas;
                }else{
                    char numeros = (char)(int)Math.floor(Math.random()*(58-48)+48);
                    password+=numeros;
                }
                
            }
            
        }
        return password;
    }
    
    public boolean esFuerte(){
        int cuentaNumeros = 0;
        int cuentaMinusculas = 0;
        int cuentaMayusculas = 0;
        
        for(int i=0; i<contraseña.length();i++){
            if(contraseña.charAt(i)>97 && contraseña.charAt(i)>=122){
                cuentaMinusculas++;
            }else{
                if(contraseña.charAt(i)>=65 && contraseña.charAt(i)<=90){
                cuentaMinusculas++;
            }else{
                    cuentaNumeros++;
                }
            }
        }
        //para mas de 5 numeros, mas de una minuscula y mas de dos mayusculas
        if(cuentaNumeros>=5 && cuentaMinusculas>=1 && cuentaMayusculas>=2){
            return true;
        }else{
            return false;
        }
    }
    
    public Password(){
        longitud = LONG_DEF;
        contraseña = generaPassword();
    }
    
    public Password(longitud){
        this.longitud=longitud;
        contraseña = generaPassword();
        
    }

}
