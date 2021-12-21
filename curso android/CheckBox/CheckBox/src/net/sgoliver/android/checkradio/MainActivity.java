package net.sgoliver.android.checkradio;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.RadioGroup;
import android.widget.TextView;

public class MainActivity extends Activity {
	
	private CheckBox cbMarcame;
	private TextView lblMensaje;
	private RadioGroup rgOpciones;
	private CheckBox cbAzul;
	@Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        cbMarcame = (CheckBox)findViewById(R.id.ChkMarcame);

        cbMarcame.setOnCheckedChangeListener(new CheckBox.OnCheckedChangeListener() {
	        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
		        if (isChecked) {
		        	cbMarcame.setText("Checkbox marcado!");
		        }
		        else {
		        	cbMarcame.setText("Checkbox desmarcado!");
		        }
	        }
        });
        
        
        cbAzul = (CheckBox)findViewById(R.id.ChkAzul);
        
        cbAzul.setOnCheckedChangeListener(new CheckBox.OnCheckedChangeListener() {
        
		@Override
		public void onCheckedChanged(CompoundButton buttonView,
				boolean isChecked) {
			// TODO Auto-generated method stub
		    if (isChecked) {
	        	cbAzul.setText("Color Azul");
	        	cbAzul.setTextColor(336699);
	        }
	        else {
	        	cbAzul.setText("Color negro");
	        	cbAzul.setTextColor(999999);
	        }
			
		}
        			
        });
        
        
        lblMensaje = (TextView)findViewById(R.id.LblSeleccion);
        rgOpciones = (RadioGroup)findViewById(R.id.gruporb);

        rgOpciones.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
	        public void onCheckedChanged(RadioGroup group, int checkedId) {
	        	lblMensaje.setText("ID opción seleccionada: " + checkedId);
	        }
        });
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activity_main, menu);
        return true;
    }
}
