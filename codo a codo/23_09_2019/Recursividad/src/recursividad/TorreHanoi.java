
package recursividad;

public class TorreHanoi {
    
    public static void main(String[] args) {
        TorreHanoi objHanoi = new TorreHanoi();
        objHanoi.hanoi(3, 1, 2, 3);
        System.out.println("Algoritmo terminado");
    }
    //creando el metodo recursivo
    public void hanoi(int discos, int torre1, int torre2, int torre3){
        //caso base
        if(discos==1){
            System.out.println("Mover disco de torre " + torre1 + " a torre " + torre3);
        }else{
            //dominio
            hanoi(discos-1, torre1, torre3, torre2);
            System.out.println("Mover disco de torre " + torre1 + " a torre " + torre3);
            hanoi(discos-1, torre2, torre1, torre3);
        }
    }
}
