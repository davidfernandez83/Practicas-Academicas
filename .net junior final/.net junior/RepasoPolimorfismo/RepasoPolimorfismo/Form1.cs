using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace RepasoPolimorfismo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Componente.ClasePolimorfismo obj = new Componente.ClasePolimorfismo();
            Componente.Clientes oCliente = new Componente.Clientes();
            MessageBox.Show( obj.Crear(oCliente, "Clientes"));
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Componente.ClasePolimorfismo obj = new Componente.ClasePolimorfismo();
            Componente.ClaseBase oProv = new Componente.Proveedores();
            MessageBox.Show( obj.Crear(oProv, "Clientes"));
        }

        private void button3_Click(object sender, EventArgs e)
        {
            List<int> Numeros = new List<int>();
            Numeros.Add(1);
            Numeros.Add(2);

            List<string> Datos = new List<string>();
            Datos.Add("Buenos Aires");
            Datos.Add("Córdoba");

            foreach (int i in Numeros)
            {
                MessageBox.Show(i.ToString());
            }

            foreach (string x in Datos)
            {

            }

            List<Componente.Clientes> oCliente = new List<Componente.Clientes>();


            Dictionary<string, string> openWith = new Dictionary<string, string>();
            openWith.Add("txt", "notepad.exe");
            openWith.Add("bmp", "paint.exe");
            openWith.Add("dib", "paint.exe");
            openWith.Add("rtf", "wordpad.exe");

            // modifica el valor            
            openWith["rtf"] = "winword.exe";

        }
    }
}
