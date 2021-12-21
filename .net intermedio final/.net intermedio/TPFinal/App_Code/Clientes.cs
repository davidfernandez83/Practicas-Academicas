using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for Clientes
/// </summary>
public class Clientes
{
	public Clientes()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    int _Cliente;

public int Cliente
{
  get { return _Cliente; }
  set { _Cliente = value; }
}
string _RazonSocial;

public string RazonSocial
{
  get { return _RazonSocial; }
  set { _RazonSocial = value; }
}
    string _CUIT;

public string CUIT
{
  get { return _CUIT; }
  set { _CUIT = value; }
}
    string _Domicilio;

public string Domicilio
{
  get { return _Domicilio; }
  set { _Domicilio = value; }
}
    DateTime _FechaAlta;

public DateTime FechaAlta
{
  get { return _FechaAlta; }
  set { _FechaAlta = value; }
}
    int _TipoResponsable;

public int TipoResponsable
{
  get { return _TipoResponsable; }
  set { _TipoResponsable = value; }
}
    string _Contacto;

public string Contacto
{
  get { return _Contacto; }
  set { _Contacto = value; }
}
    string _Mail;

public string Mail
{
  get { return _Mail; }
  set { _Mail = value; }
}
    decimal _Saldo;

public decimal Saldo
{
  get { return _Saldo; }
  set { _Saldo = value; }
}

}
