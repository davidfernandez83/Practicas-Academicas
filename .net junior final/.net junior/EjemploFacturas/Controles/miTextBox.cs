using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Controles
{
    public enum eContenido
    {
        Caracteres,
        Numeros
    }

    public class miTextBox : System.Windows.Forms.TextBox
    {
        private eContenido _Contenido;
        private bool _TextoSeleccionado;

        public eContenido Contenido
        {
            get { return _Contenido; }
            set { _Contenido = value; }
        }


        public bool TextoSeleccionado
        {
            get { return _TextoSeleccionado; }
            set { _TextoSeleccionado = value; }
        }

        private void miTextBox_KeyPress(object sender, System.Windows.Forms.KeyPressEventArgs e)
        {
            if (this.Contenido == eContenido.Numeros)
            {
                if (e.KeyChar >= 48 && e.KeyChar <= 57)
                    e.Handled = false;
                else if (e.KeyChar == 8)
                    e.Handled = false;
                else if (e.KeyChar == 45)
                    e.Handled = false;
                else
                    e.Handled = true;
            }
            else
                e.Handled = false;
        }

        public miTextBox()
        {
            this.KeyPress += new System.Windows.Forms.KeyPressEventHandler(
                miTextBox_KeyPress);
            TextoSeleccionado = true;
            this.GotFocus += new System.EventHandler(miTextBox_GotFocus);
        }

        private void miTextBox_GotFocus(object sender, System.EventArgs e)
        {
            if (TextoSeleccionado)
                base.Select(0, base.Text.Length);
        }

    }
}
