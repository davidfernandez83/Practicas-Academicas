package com.example.educacionit.myapplication;

import android.content.Intent;
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import java.util.zip.Inflater;


public class MainActivity extends ActionBarActivity {

    TextView lblMensaje;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //Obtenemos las referencias a los controles
        lblMensaje = (TextView)findViewById(R.id.LblMensaje);

        //Asociamos los menús contextuales a los controles
        registerForContextMenu(lblMensaje);
    }

    @Override
    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenu.ContextMenuInfo menuInfo) {
        super.onCreateContextMenu(menu, v, menuInfo);

        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.menu_ctx_etiqueta, menu);

    }


    @Override
    public boolean onContextItemSelected(MenuItem item) {

        switch (item.getItemId()) {
            case R.id.CtxLblOpc1:
                lblMensaje.setText("Etiqueta: Opcion 1 pulsada!");
                return true;
            case R.id.CtxLblOpc2:
                lblMensaje.setText("Etiqueta: Opcion 2 pulsada!");
                return true;
            default:
                return super.onContextItemSelected(item);
        }
    }

        @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main_activity_actions, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        switch (item.getItemId()) {
            case R.id.menuitem1:
                Toast.makeText(this, "Menu Item Prefs seleccionado",Toast.LENGTH_SHORT).show();
                break;
            case R.id.menuitem2:
                Toast.makeText(this, "Menu item Test seleccionado",Toast.LENGTH_SHORT).show();
                break;
            case R.id.menuitem3:
                Toast.makeText(this, "Menu item Abrir",Toast.LENGTH_SHORT).show();
                break;
            case R.id.menuitem4:
                Toast.makeText(this, "Menu item Buscar",Toast.LENGTH_SHORT).show();
                break;
            case R.id.menuitem5:
                Toast.makeText(this, "Menu item Click",Toast.LENGTH_SHORT).show();

                Intent miIntent = new Intent( this, HijaActivity.class);
                miIntent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
                startActivity(miIntent);

                break;
            default:
                break;
        }
        return true;

    }
}
