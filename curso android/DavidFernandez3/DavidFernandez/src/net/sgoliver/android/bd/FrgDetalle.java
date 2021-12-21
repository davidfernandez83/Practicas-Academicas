package net.sgoliver.android.bd;

import android.os.Bundle;
import android.app.Fragment;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;




public class FrgDetalle extends Fragment {
	private EditText txtCodigo;
	private EditText txtNombre;
	private EditText txtEdad;


	private Button btnInsertar;
	private Button btnActualizar;
	private Button btnEliminar;
	private SQLiteDatabase db;
	
    UsuariosSQLiteHelper usdbh =
            new UsuariosSQLiteHelper(this, "DBUsuarios11_2", null, 1);
 


	public FrgDetalle()
	{
		txtCodigo = (EditText)getActivity().findViewById(R.id.txtReg);
		txtNombre = (EditText)getActivity().findViewById(R.id.txtVal);
		txtEdad = (EditText)getActivity().findViewById(R.id.txtEdad);
		
		btnInsertar = (Button)getActivity().findViewById(R.id.btnInsertar);
		btnActualizar = (Button)getActivity().findViewById(R.id.btnActualizar);
		btnEliminar = (Button)getActivity().findViewById(R.id.btnEliminar);
		
        db = usdbh.getWritableDatabase();

	}
	
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
	
	
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// Inflate the layout for this fragment
		return inflater.inflate(R.layout.frg_detalle, container, false);
	}

}
