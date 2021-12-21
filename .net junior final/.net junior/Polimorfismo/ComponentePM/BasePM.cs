using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ComponentePM
{
    public abstract class BasePM
    {
        public abstract string NombreTabla { get;}

        public virtual string Crear()
        {
            return "Crea registro en tabla " + NombreTabla;
        }

        public virtual string Modificar()
        {
            return "Modifica registro en tabla " + NombreTabla;
        }

        public virtual string Eliminar()
        {
            return "Elimina registro en tabla " + NombreTabla;
        }

        public virtual string Consultar()
        {
            return "Consulta registro en tabla " + NombreTabla;
        }
    }
}
