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


	public FrgPrincipal() {
		btnConsultar = (Button)getActivity().findViewById(R.id.btnConsultar);
		lst1 = (ListView)getActivity().findViewById(R.id.listView1);
	}

	/*
	btnConsultar.setOnClickListener(new OnClickListener() {
		public void onClick(View v) {
			

		}
	})*/
	
	
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// Inflate the layout for this fragment

		//rootView = inflater.inflate(R.layout.frg_principal, container, false);
		return inflater.inflate(R.layout.frg_principal, container, false);
	}




}
