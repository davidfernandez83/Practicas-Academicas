package net.sgoliver.android.bd;

import android.os.Bundle;
import android.app.Fragment;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;

	
	
public class FrgPrincipal extends Fragment {
	
	private Button btnConsultar;
	private ListView lst1;
	private SQLiteDatabase db;

	

	public FrgPrincipal() {
		btnConsultar = (Button)getActivity().findViewById(R.id.btnConsultar);
		lst1 = (ListView)getActivity().findViewById(R.id.listView1);
	}

	
	btnConsultar.setOnClickListener(new OnClickListener() {
		public void onClick(View v) {
			
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
			          
			          //txtConsulta.append(" " + cod + " - " + nom + " - " + edad + "\n");
			          
			          
			          
			          
			     } while(c.moveToNext());
			}
		}
	});
	
	
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// Inflate the layout for this fragment
		//View rootView = inflater.inflate(R.layout.frg_principal, container, false);
		return inflater.inflate(R.layout.frg_principal, container, false);
	}




}
