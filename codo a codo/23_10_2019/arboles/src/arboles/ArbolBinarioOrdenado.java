
package arboles;

public class ArbolBinarioOrdenado {
    //Creamos la clase interna Nodo
    class Nodo{
        int info;
        Nodo izq, der;
    }
    Nodo raiz;
    
    public ArbolBinarioOrdenado(){
        raiz = null;
    }
    public void insertar (int info){
        Nodo nuevo;
        nuevo = new Nodo();
        nuevo.info= info;
        nuevo.izq = null;
        nuevo.der = null;
        if(raiz==null)
            raiz = nuevo;
        else{
            Nodo anterior = null, reco;
            reco = raiz;
            while(reco !=null){
                anterior=reco;
                if(info<reco.info)
                    anterior.izq = nuevo;
                else
                    anterior.der = nuevo;
            }
            
            }
    }
        private void imprimirPre(Nodo reco){
            if(reco != null){
                System.out.println(reco.info + " ");
                imprimirPre(reco.izq);
                imprimirPre(reco.der);
            }
        }
        
        public void imprimirPre(){
            imprimirPre(raiz);//recursividad cruzada
            System.out.println();
        }
        private void imprimirEntre(Nodo reco){
            if(reco != null){
                
                imprimirPre(reco.izq);
                System.out.println(reco.info + " ");
                imprimirPre(reco.der);
            }
        }
        
        public void imprimirEntre(){
            imprimirEntre(raiz);//recursividad cruzada
            System.out.println();
        }
        private void imprimirPost(Nodo reco){
            if(reco != null){
                
                imprimirPre(reco.izq);
                imprimirPre(reco.der);
                System.out.println(reco.info + " ");
            }
        }
        
        public void imprimirPost(){
            imprimirEntre(raiz);//recursividad cruzada
            System.out.println();
        }
        
        public static void main(String[] args) {
        ArbolBinarioOrdenado arbol = new ArbolBinarioOrdenado();
        arbol.intertar(100);
        arbol.intertar(50);
        arbol.intertar(25);
        arbol.intertar(75);
        arbol.intertar(150);
        
            System.out.println("Impresión preorden");
            arbol.imprimirPre();
            System.out.println("Impresión entreorden");
            arbol.imprimirEntre();
            System.out.println("Impresión postorden");
            arbol.imprimirPost();
                
    }
        
    }
    
}
