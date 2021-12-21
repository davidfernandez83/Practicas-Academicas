package club;
import java.util.Scanner;
public class Club {
    private Socio socio1, socio2, socio3;
    private Scanner teclado;
    
 public Club(){
        teclado = new Scanner(System.in);
        socio1 = new Socio(teclado);
        socio2 = new Socio(teclado);
        socio3 = new Socio(teclado);
    }    
public void mayorAntig(){
    System.out.println("Socio con mayor antigüedad:");
    if(socio1.retornarAntig()>socio2.retornarAntig() &&
            socio1.retornarAntig()>socio3.retornarAntig()){
        socio1.imprimir();
    }else{
        if(socio2.retornarAntig()>socio3.retornarAntig()){
            socio2.imprimir();
        }else{
            socio3.imprimir();
        }
    }
}      
   
    public static void main(String[] args) {
        Club club = new Club();
        club.mayorAntig();
    }
    
}