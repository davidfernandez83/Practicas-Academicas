package ar.com.educacionit.android.layoutapp;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;


public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
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
	
	/*		
	public void AbrirXXXXXLayout(View view){

		    Intent intent = new Intent(this, ClaseActivityXXXXX.class);
		    startActivity(intent);
		

	}	
	*/	
	public void AbrirLinearLayout(View view) {
	    Intent intent = new Intent(this, LinearLayoutActivity.class);
	    startActivity(intent);	
	}
	
	public void AbrirRelativeLayout(View view) {
	    Intent intent = new Intent(this, RelativeLayoutActivity.class);
	    startActivity(intent);	
	}

	public void AbrirGridLayout(View view) {
	    Intent intent = new Intent(this, GridLayoutActivity.class);
	    startActivity(intent);	
	}
	public void AbrirScrollView(View view) {
	    Intent intent = new Intent(this, ScrollViewActivity.class);
	    startActivity(intent);	
	}


}
