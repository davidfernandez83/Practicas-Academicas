using System;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Collecciones
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ArrayList al = new ArrayList();
            al.Add(1);
            al.Add("Hola");

            StringBuilder sb = new StringBuilder();
            al.Add(sb);

            ArrayList al1 = new ArrayList();
            al1.Add("Primero");
            al1.Add("Segundo");
            al1.Add("Tercero");

            foreach (string elemento in al1)
            {
                MessageBox.Show(elemento);
            }

            MessageBox.Show(al[1].ToString());

            for (int i = 0; i <= al1.Count - 1; i++)
            {
                MessageBox.Show(al1[i].ToString());
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Hashtable ht = new Hashtable();
            ht.Add("Clave 1", "Primer Valor");
            ht.Add("Clave 2", "Segundo Valor");
            ht.Add("Clave 3", "Tercer Valor");

            foreach (System.Collections.DictionaryEntry  elemento in ht)
            {
                MessageBox.Show(elemento.Value.ToString());
            }

            //MessageBox.Show(ht[1].ToString());
            MessageBox.Show(ht["Clave 2"].ToString());
        }

        private void button3_Click(object sender, EventArgs e)
        {
            List<string> lista = new List<string>();
            lista.Add("Primero");
            lista.Add("Segundo");

            List<int> listaEntera = new List<int>();
            listaEntera.Add(1);
            listaEntera.Add(10);

            StringBuilder sb = new StringBuilder();
            sb.Append("Algun texto");
            StringBuilder sb1 = new StringBuilder();
            sb1.Append("Otro Texto");

            List<StringBuilder> listasb = new List<StringBuilder>();
            listasb.Add(sb);
            listasb.Add(sb1);
            //listasb.Remove(sb);
            MessageBox.Show(listasb.Count.ToString());

            foreach (string x in lista)
            {
                MessageBox.Show(x);
            }

            foreach (int x in listaEntera)
            {
                MessageBox.Show(x.ToString());
            }

            foreach (StringBuilder s in listasb)
            {
                MessageBox.Show(s.ToString());
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Dictionary<string, int> lista = new Dictionary<string, int>();
            lista.Add("Uno", 1);
            lista.Add("Dos", 2);

            MessageBox.Show(lista["Uno"].ToString());
        }

        private void button5_Click(object sender, EventArgs e)
        {
            SortedList<string, string> sl = new SortedList<string, string>();
            sl.Add("", "");

            Queue<string> q = new Queue<string>();
            q.Enqueue("");

            System.Collections.Generic.Stack<string> st =
                new Stack<string>();
            st.Push("");
        }
    }
}
