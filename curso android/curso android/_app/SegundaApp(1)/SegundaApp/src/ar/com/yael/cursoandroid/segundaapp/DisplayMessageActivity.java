package ar.com.yael.cursoandroid.segundaapp;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;

public class DisplayMessageActivity extends Activity {


	//@Override
	//protected void onCreate(Bundle savedInstanceState) {
	//	super.onCreate(savedInstanceState);
	//	setContentView(R.layout.activity_display_message);
	//}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.display_message, menu);
		return true;
	}
	

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.activity_display_message);
	    
	    // Get the message from the intent
	    Intent intent = getIntent();
	    String message = intent.getStringExtra(MainActivity.getExtraMessage());

	    // Create the text view
	    TextView textView; 
	    textView = (TextView) findViewById(R.id.txt_mensaje_display);
	    //Cambiar propiedades en tiempo de ejecución
	    
	    /*TextView textView = new TextView(this);
	    textView.setTextSize(40);
	    */
	    
	    //Asignar un valor al texto del TextView
        textView.setText(message.toString());
	    
	    //Set the text view as the activity layout
	    //setContentView(textView);
	 
	    

	 	    
	}
}
