using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

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

    private int _Codigo;

    public int Codigo
    {
        get { return _Codigo; }
        set { _Codigo = value; }
    }

    private string _Razon;

    public string Razon
    {
        get { return _Razon; }
        set { _Razon = value; }
    }

    private string _Cuit;

    public string Cuit
    {
        get { return _Cuit; }
        set { _Cuit = value; }
    }

    private string _Domicilio;

    public string Domicilio
    {
        get { return _Domicilio; }
        set { _Domicilio = value; }
    }

    private DateTime _FhAlta;

    public DateTime FhAlta
    {
        get { return _FhAlta; }
        set { _FhAlta = value; }
    }

    private byte _TipoResp;

    public byte TipoResp
    {
        get { return _TipoResp; }
        set { _TipoResp = value; }
    }

    private string _Contacto;

    public string Contacto
    {
        get { return _Contacto; }
        set { _Contacto = value; }
    }

    private string _Mail;

    public string Mail
    {
        get { return _Mail; }
        set { _Mail = value; }
    }

    private decimal _Saldo;

    public decimal Saldo
    {
        get { return _Saldo; }
        set { _Saldo = value; }
    }
}
