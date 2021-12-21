package net.sgoliver.android.bd;

import android.os.Bundle;
import android.app.Activity;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends Activity {
	
	private EditText txtCodigo;
	private EditText txtNombre;
	private EditText txtEdad;
	private TextView txtConsulta;
	
	private Button btnInsertar;
	private Button btnActualizar;
	private Button btnEliminar;
	private Button btnConsultar;
	
	private SQLiteDatabase db;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		//Obtenemos las referencias a los controles
		txtCodigo = (EditText)findViewById(R.id.txtReg);
		txtNombre = (EditText)findViewById(R.id.txtVal);
		txtEdad = (EditText)findViewById(R.id.txtEdad);
		txtConsulta = (TextView)findViewById(R.id.txtConsulta);
		
		btnInsertar = (Button)findViewById(R.id.btnInsertar);
		btnActualizar = (Button)findViewById(R.id.btnActualizar);
		btnEliminar = (Button)findViewById(R.id.btnEliminar);
		btnConsultar = (Button)findViewById(R.id.btnConsultar);
		
		//Abrimos la base de datos 'DBUsuarios' en modo escritura
        UsuariosSQLiteHelper usdbh =
            new UsuariosSQLiteHelper(this, "DBUsuarios11_2", null, 1);
 
        db = usdbh.getWritableDatabase();
		
		btnInsertar.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				
				//Recuperamos los valores de los campos de texto
				String cod = txtCodigo.getText().toString();
				String nom = txtNombre.getText().toString();
				String edad = txtEdad.getText().toString();
				
				//Alternativa 1: m�todo sqlExec()
				String sql = "INSERT INTO Usuarios (codigo,nombre,edad) VALUES ('" + cod + "','" + nom + "',"+edad+") ";
				db.execSQL(sql);
				
				//Alternativa 2: m�todo insert()
				//ContentValues nuevoRegistro = new ContentValues();
				//nuevoRegistro.put("codigo", cod);
				//nuevoRegistro.put("nombre", nom);
				//db.insert("Usuarios", null, nuevoRegistro);
			}
		});
		
		btnActualizar.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				
				//Recuperamos los valores de los campos de texto
				String cod = txtCodigo.getText().toString();
				String nom = txtNombre.getText().toString();
				String edad = txtEdad.getText().toString();
				
				//Alternativa 1: m�todo sqlExec()
				//String sql = "UPDATE Usuarios SET nombre='" + nom + "' WHERE codigo=" + cod;
				//db.execSQL(sql);
				
				//Alternativa 2: m�todo update()
				ContentValues valores = new ContentValues();
				valores.put("nombre", nom);
				valores.put("edad",edad);
				db.update("Usuarios", valores, "codigo=" + cod, null);
			}
		});
		
		btnEliminar.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				
				//Recuperamos los valores de los campos de texto
				String cod = txtCodigo.getText().toString();
				
				//Alternativa 1: m�todo sqlExec()
				//String sql = "DELETE FROM Usuarios WHERE codigo=" + cod;
				//db.execSQL(sql);
				
				//Alternativa 2: m�todo delete()		 
				db.delete("Usuarios", "codigo=" + cod, null);
			}
		});
		
		btnConsultar.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				
				//Alternativa 1: m�todo rawQuery()
				Cursor c = db.rawQuery("SELECT codigo, nombre, edad FROM Usuarios", null);
							
				//Alternativa 2: m�todo delete()		 
				//String[] campos = new String[] {"codigo", "nombre"};
				//Cursor c = db.query("Usuarios", campos, null, null, null, null, null);
				
				//Recorremos los resultados para mostrarlos en pantalla
				txtConsulta.setText("");
				if (c.moveToFirst()) {
				     //Recorremos el cursor hasta que no haya m�s registros
				     do {
				          String cod = c.getString(0);
				          String nom = c.getString(1);
				          String edad = c.getString(2);
				          
				          txtConsulta.append(" " + cod + " - " + nom + " - " + edad + "\n");
				     } while(c.moveToNext());
				}
			}
		});
		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

}
