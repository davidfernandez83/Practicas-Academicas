package com.appandroid.yael.primeraapp;


/**
 * Created by Mami Yachu on 05/01/15.
 */
public class Destino {
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Double getLatitud() {
        return latitud;
    }

    public void setLatitud(Double latitud) {
        this.latitud = latitud;
    }

    public Double getLongitud() {
        return longitud;
    }

    public void setLongitud(Double longitud) {
        this.longitud = longitud;
    }

    @Override
public String toString(){
 return this.getNombre() + "-" + this.getEstado();
}

    private String nombre;
    private String estado;
    private Double latitud;
    private Double longitud;

}
