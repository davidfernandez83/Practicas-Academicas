package com.appandroid.yael.primeraapp;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
//import android.app.ActionBar;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.Toast;



public class MainActivity extends Activity implements OnItemSelectedListener {

//public class MainActivity extends ActionBar {
	private static final String EXTRA_MESSAGE = null;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		ImageView imagen = (ImageView) findViewById(R.id.textView1);
        imagen.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getBaseContext(), "Clicked", Toast.LENGTH_LONG).show();
            }
        });

     //   Spinner spinner = (Spinner) findViewById(R.id.spinnerLocalidad);

        List<String> list = new ArrayList<String>();

        list.add("CABA");
        list.add("Junin");
        list.add("Rosario");
        list.add("Cordoba");

        ArrayAdapter<String> dataAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_item, list);
        dataAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);

        spinner.setAdapter(dataAdapter);
        spinner.setOnItemSelectedListener(this);

	}

	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
	    // Inflate the menu items for use in the action bar
	    MenuInflater inflater = getMenuInflater();
	    inflater.inflate(R.menu.main_activity_actions, menu);
	    return super.onCreateOptionsMenu(menu);
	    
	}
	
	//** Called when the user clicks the Send button */
	public void sendMessage(View view) {
	    // Do something in response to button
		    Intent intent = new Intent(this, DisplayMessageActivity.class);
		    EditText editText = (EditText) findViewById(R.id.edit_message);
		    String message = editText.getText().toString();
		    intent.putExtra(getExtraMessage(), message);
		    startActivity(intent);
	}
	
//	@Override
//	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
//		int id = item.getItemId();
	//		if (id == R.id.action_settings) {
	//			return true;
	//		}
	//		return super.onOptionsItemSelected(item);
	//	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		  // Handle presses on the action bar items   
	    switch (item.getItemId()) {   
	        case R.id.action_search:      
		  Toast.makeText(getBaseContext(), "Click en el ícono Buscar", Toast.LENGTH_LONG).show();
	            return true;
	        case R.id.action_call:  
		  Toast.makeText(getBaseContext(), "Click en el ícono Llamar", Toast.LENGTH_LONG).show();
	            return true;
	        default:
	            return super.onOptionsItemSelected(item);
	    }

	}
	
	
	public static String getExtraMessage() {
		return EXTRA_MESSAGE;
	}
}
