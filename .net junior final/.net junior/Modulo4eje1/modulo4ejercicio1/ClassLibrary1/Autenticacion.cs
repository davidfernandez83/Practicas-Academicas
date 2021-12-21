using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClassLibrary1
{
    public class Autenticacion
    {
        private string usuario;
        private string contraseña;

        public string Contraseña
        {
            get { return contraseña; }
            set
            {
                if (value.Length < 5)
                    throw new Exception("La contraseña debe tener 5 caracteres como minimo");
                else
                    contraseña = value;
            }
        }

        public string Usuario
        {
            get
            {return usuario;}
            set
            {
                if (value == null)
                    throw new Exception("El usuario esta vacio");
                else
                    usuario = value;
            }
        }

        public Autenticacion(string usuario, string contraseña)
        {
            Usuario = usuario;
            Contraseña = contraseña;
        }

        public bool Autenticar()
        {
            string aUsuario = "usuario";
            string aContraseña = "12345";

            if (Usuario == aUsuario && Contraseña == aContraseña)
                return true;
            else
                return false;
        }

        public bool Autenticar(string usuario, string contraseña)
        {
            if (usuario == "usuario" && contraseña == "12345")
                return true;
            else
                return false;
        }
    }
}
