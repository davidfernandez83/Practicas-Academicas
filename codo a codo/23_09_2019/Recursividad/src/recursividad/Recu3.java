
package recursividad;

public class Recu3 {
    
    public static void main(String[] args) {
        
        //factorial sin recursión
        /*int fact = 1;
        for(int i=1; i<=4;i++){
            fact*=i;
        }
        System.out.println(fact);
    }*/
        
        
        //factorial con recursión
        
        Recu3 recursividad = new Recu3();
        int f = recursividad.factorial(4);
        System.out.println("El factorial de 4 es: "+f);

}
    
 public static int factorial(int num){
            
    if(num==0){
        return 1;
    }else{
        return num*factorial(num-1);
    }
            
 }
 

}