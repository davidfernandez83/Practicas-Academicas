package net.sgoliver.android.bd;

import android.os.Bundle;
import android.app.Activity;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends Activity {
	
	private SQLiteDatabase db;
	
	private Contacto[] con;

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
	          int cod = Integer.parseInt(c.getString(0));
	          String nom = c.getString(1);
	          int edad = Integer.parseInt(c.getString(2));
	          
	          con=new Contacto[]{new Contacto(cod,nom,edad)};
	          
	          
	     } while(c.moveToNext());
	}
	
	
	
	

	
	class Adaptador extends ArrayAdapter<Contacto> {
		
		Activity context;

		
		Adaptador(Activity context) {
			super(context, R.layout.listitem_contacto, datos);
			this.context = context;
		}

		public View getView(int position, View convertView, ViewGroup parent) {
			LayoutInflater inflater = context.getLayoutInflater();
			View item = inflater.inflate(R.layout.listitem_contacto, null);
			
			TextView lblCodigo = (TextView)item.findViewById(R.id.LblCodigo);
			lblCodigo.setText(datos[position].getTitulo());
			
			TextView lblNombre = (TextView)item.findViewById(R.id.LblNombre);
			lblNombre.setText(datos[position].getSubtitulo());
			
			return(item);
		}
	}
	
	
	
	
	
	
	
	

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		//Obtenemos las referencias a los controles

		//txtConsulta = (TextView)findViewById(R.id.txtConsulta);
		


		
		//Abrimos la base de datos 'DBUsuarios' en modo escritura
        UsuariosSQLiteHelper usdbh =
            new UsuariosSQLiteHelper(this, "DBUsuarios11_2", null, 1);
 
       // db = usdbh.getWritableDatabase();
		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

}
