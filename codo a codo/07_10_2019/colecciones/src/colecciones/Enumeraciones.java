
package colecciones;

public class Enumeraciones {
    
    enum Dia {LUNES, MARTES, MIERCOLES, JUEVES, VIERNES, SABADO, DOMINGO};

    public static void main(String[] args) {
        Dia d;
        d = Dia.LUNES;
        if(d==Dia.LUNES || d==Dia.MIERCOLES){
            System.out.println("Estoy estudiando");
        }else{
            System.out.println("Trabajando/estudiando/descansando");
        }
        
        switch(d){
            case LUNES:
            case MARTES:
            case MIERCOLES:
            case JUEVES:
            case VIERNES:
                System.out.println("Trabajando/estudiando/descansando");
                break;
            default:
                System.out.println("Descansando");
            
    }
    }
    
}
