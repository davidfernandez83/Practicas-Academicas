package net.sgoliver.android.bd;

public class Contacto {
	private int codigo;
	private String nombre;
	private int edad;
	
	public Contacto(int cod, String nom,int edad){
		this.setCodigo(cod);
		this.setNombre(nom);
		this.setEdad(edad);
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

}
