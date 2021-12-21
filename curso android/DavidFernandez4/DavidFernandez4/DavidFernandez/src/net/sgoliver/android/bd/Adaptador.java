package net.sgoliver.android.bd;

import android.app.Activity;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import net.sgoliver.android.bd.R;
import net.sgoliver.android.bd.Contacto;

class Adaptador extends ArrayAdapter<Contacto> {
	
	Activity context;
	private SQLiteDatabase db;
	
	Adaptador(Activity context) {
		super(context, R.layout.listitem_contacto, datos);
		this.context = context;
	}

	public View getView(int position, View convertView, ViewGroup parent) {
		LayoutInflater inflater = context.getLayoutInflater();
		View item = inflater.inflate(R.layout.listitem_contacto, null);
		
		
		//Alternativa 1: m�todo rawQuery()
		Cursor c = db.rawQuery("SELECT codigo, nombre, edad FROM Usuarios", null);
					
		//Alternativa 2: m�todo delete()		 
		//String[] campos = new String[] {"codigo", "nombre"};
		//Cursor c = db.query("Usuarios", campos, null, null, null, null, null);
		
		//Recorremos los resultados para mostrarlos en pantalla
		//txtConsulta.setText("");
		if (c.moveToFirst()) {
		     //Recorremos el cursor hasta que no haya m�s registros
		     do {
		          String cod = c.getString(0);
		          String nom = c.getString(1);
		          String edad = c.getString(2);
		          
		          
		          
		          
		     } while(c.moveToNext());
		}
		
		
		TextView lblCodigo = (TextView)item.findViewById(R.id.LblCodigo);
		lblCodigo.setText(datos[position].getTitulo());
		
		TextView lblNombre = (TextView)item.findViewById(R.id.LblNombre);
		lblNombre.setText(datos[position].getSubtitulo());
		
		return(item);
	}
}