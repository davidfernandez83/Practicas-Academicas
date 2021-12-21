using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Controles
{
    public class MiDateTime:System.Windows.Forms.DateTimePicker 
    {
        public MiDateTime()
        {
            this.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.MostrarHora=false ;
           
            this.MinDate = new DateTime(2010, 1, 1);
            this.MaxDate = new DateTime(2030, 12, 31);
        }

        private bool mostrarHora;
        public bool MostrarHora
        {
            get { return mostrarHora; }
            set
            {
                mostrarHora = value;
                if (value)
                {
                    this.CustomFormat = "dd/MM/yyyy HH:mm";
                    this.Width = 123;
                }
                else
                {
                    this.CustomFormat = "dd/MM/yyyy";
                    this.Width = 96;
                }
            }
        }
    }
}
