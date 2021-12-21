using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Ejemplo1
{
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int a=0;
            if (a==0)
            {
                int b=0;

            }

            int[] miArray = { 4, 1, 6, 87, 2 };
            for (int i = 0; i <= miArray.GetUpperBound(0); i++)
            {
                 // codigo a repetir
                MessageBox.Show(miArray[i].ToString());
            }

            for (int i = 100; i >= 0; i -= 10)
            {
                // codigo
            }

            foreach (int elemento in miArray)
            {
                MessageBox.Show(elemento.ToString());
            }


            StringBuilder sb = new StringBuilder(100);
            for (int i = 0; i <= miArray.GetUpperBound(0); i++)
            { 
                sb.Append(miArray[i].ToString() + ", ");
            }
            MessageBox.Show(sb.ToString());
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int a=0;
            while (a != 0)
            {
                // codigo
            }

            int[] miArray = { 4, 1, 6, 87, 2 };
            int indice = 0;

            while (indice <= miArray.GetUpperBound(0))
            {
                if (miArray[indice] == 5)
                {
                    // continua sin procesar ese elemento
                    indice++;
                    continue;
                }
                if (miArray[indice] == 10)
                {
                    // sale del while
                    break;
                }

                MessageBox.Show(miArray[indice].ToString());
                indice++;
            }

            do
            {
                // codigo
            } while (a != 0);


        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                Cursor = Cursors.WaitCursor;
                int a = 10;
                int b = 0;
                int c = 0;
                if (b != 0)
                    c = a / b;

                // codigo del procedimiento
                int[] miArray = { 4, 1, 6, 87, 2 };
                for (int i = 0; i <= 4; i++)
                {
                    // codigo a repetir
                    MessageBox.Show(miArray[i].ToString());
                }

            }
            catch (DivideByZeroException ex)
            {
                MessageBox.Show(ex.Message);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                MessageBox.Show(ex.StackTrace);
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                Cursor = Cursors.Default;
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            int x = 10;
            int y = ++x;

        }
    }
}
