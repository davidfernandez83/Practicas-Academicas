
package empleados;

public class UsoEmpleado {
     public static void main(String[] args) {
      /*Empleado empleado1 = new Empleado("Juan Perez",35000,2000,01,18);
        Empleado empleado2 = new Empleado("Marta Rodriguez",22000,2008,05,22);
        Empleado empleado3 = new Empleado("Martin Robertis",26000,1998,10,30);
        
        empleado1.aumentaSueldo(10);
        empleado2.aumentaSueldo(10);
        empleado3.aumentaSueldo(10);
        
         System.out.println("| Nombre: " + empleado1.unNombre()+ " | Sueldo: " +
                 empleado1.unSueldo() + "| Fecha de Ingreso: " + empleado1.unaFechaAlta() );
         System.out.println("| Nombre: " + empleado2.unNombre()+ " | Sueldo: " +
                 empleado2.unSueldo() + "| Fecha de Ingreso: " + empleado2.unaFechaAlta() );
         System.out.println("| Nombre: " + empleado3.unNombre()+ " | Sueldo: " +
                 empleado3.unSueldo() + "| Fecha de Ingreso: " + empleado3.unaFechaAlta() );*/
      /*
     Empleado misEmpleados[] = new  Empleado[6];
     
      misEmpleados[0] = new Empleado("Juan Perez",35000,2000,01,18);
      misEmpleados[1] = new Empleado("Marta Rodriguez",22000,2008,05,22);
      misEmpleados[2] = new Empleado("Martin Robertis",26000,1998,10,30);
      misEmpleados[3] = new Empleado("José Coronado");
      Jefe jefeRRHH = new Jefe("Alberto Fernandez", 50000, 1998, 4 ,12);
      jefeRRHH.ganaIncentivo(10000);
      misEmpleados[4] = jefeRRHH;
      misEmpleados[5] = new Jefe("Horacio Larreta",40000,2009,11,02);
      Jefe jefeSistemas = (Jefe)misEmpleados[5]; //casting
      jefeSistemas.ganaIncentivo(10000);
      */
      
      /*for(int i=0;i<3;i++){
         
      }*/
      /*
      for(Empleado e: misEmpleados){    //for each o for mejorado
           e.aumentaSueldo(10);
      }
      for(Empleado e: misEmpleados){
          System.out.println("| Nombre: "+ e.unNombre() + 
                  " |Sueldo: " + e.unSueldo() + " |Fecha de Ingreso: " + 
                  e.unaFechaAlta());
      }*/
      
      Persona persona[] = new Persona[2];
      persona[0] = new Empleado("Mateo velarde", 25000,2000,03,22);
      persona[1] = new Pasante("Daniela Herrera", "Contabilidad");
      for(Persona p: persona){
          System.out.println(p.unNombre() + " " + p.unaDescripcion());
      }
    }
}