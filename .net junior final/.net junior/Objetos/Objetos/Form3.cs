using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using MiDll;

namespace Objetos
{
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ClasePrueba obj = new ClasePrueba();
            MiDll.ClasePrueba obj1 = new MiDll.ClasePrueba();

            obj.MiPropiedad = 10;
            string a = "Hola";
            string Respuesta= obj.MetodoPrueba(a);
            MessageBox.Show(a);
            MessageBox.Show(Respuesta);

            int b = 5;
            obj.MetodoConParametrosReferencia(ref b);
            MessageBox.Show(b.ToString());

            int z;
            obj.MetodoConParametroSalida(out z);
            MessageBox.Show(z.ToString());
        }

        private void button2_Click(object sender, EventArgs e)
        {
            MiDll.ClaseModificadores obj = new ClaseModificadores();
            obj.MetodoPublico();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            MiDll.ClaseConMetodosSobrecargados obj = 
                new ClaseConMetodosSobrecargados();
            obj.Metodo1("");
            obj.Metodo1("", 1);
            obj.Metodo1(1);
        }

        MiDll.ClaseConConstructor objeto;
        private void button4_Click(object sender, EventArgs e)
        {
            MiDll.ClaseConConstructor obj = new ClaseConConstructor();
            MessageBox.Show(obj.Propiedad.ToString());

            MiDll.ClaseConConstructor obj1 = new ClaseConConstructor(1);
            MessageBox.Show(obj1.Propiedad.ToString());
        }

        private void button5_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection cn =
                   new System.Data.SqlClient.SqlConnection();
            try
            {
                StringBuilder sb = new StringBuilder();
                sb.Append("E");
              
                cn.Open();
                // tengo un error
                cn.Close();
                cn.Dispose();
            }
            catch (Exception ex)
            {
                // preguntar si esta abierta
                cn.Close();
            }


        }

        private void button6_Click(object sender, EventArgs e)
        {
            using (System.Data.SqlClient.SqlConnection cn =
                   new System.Data.SqlClient.SqlConnection())
            {
                cn.Open();
                using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand())
                { 

                }
            }
        }
    }
}
