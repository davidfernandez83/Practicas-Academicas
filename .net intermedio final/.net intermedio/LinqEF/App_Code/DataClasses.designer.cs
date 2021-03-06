#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:2.0.50727.3053
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[System.Data.Linq.Mapping.DatabaseAttribute(Name="AdventureWorks2008")]
public partial class DataClassesDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void InsertCountryRegion(CountryRegion instance);
  partial void UpdateCountryRegion(CountryRegion instance);
  partial void DeleteCountryRegion(CountryRegion instance);
  partial void InsertStateProvince(StateProvince instance);
  partial void UpdateStateProvince(StateProvince instance);
  partial void DeleteStateProvince(StateProvince instance);
  #endregion
	
	public DataClassesDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["AdventureWorks2008ConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<CountryRegion> CountryRegions
	{
		get
		{
			return this.GetTable<CountryRegion>();
		}
	}
	
	public System.Data.Linq.Table<StateProvince> StateProvinces
	{
		get
		{
			return this.GetTable<StateProvince>();
		}
	}
	
	[Function(Name="dbo.TraerProvincias")]
	public ISingleResult<TraerProvinciasResult> TraerProvincias([Parameter(Name="Pais", DbType="VarChar(3)")] string pais)
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), pais);
		return ((ISingleResult<TraerProvinciasResult>)(result.ReturnValue));
	}
	
	[Function(Name="dbo.GrabarProvincias")]
	public int GrabarProvincias([Parameter(Name="CodProv", DbType="Char(3)")] string codProv, [Parameter(Name="CodPais", DbType="VarChar(3)")] string codPais, [Parameter(Name="Nombre", DbType="VarChar(50)")] string nombre, [Parameter(Name="Territorio", DbType="Int")] System.Nullable<int> territorio)
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), codProv, codPais, nombre, territorio);
		return ((int)(result.ReturnValue));
	}
}

[Table(Name="Person.CountryRegion")]
public partial class CountryRegion : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private string _CountryRegionCode;
	
	private string _Name;
	
	private System.DateTime _ModifiedDate;
	
	private EntitySet<StateProvince> _StateProvinces;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnCountryRegionCodeChanging(string value);
    partial void OnCountryRegionCodeChanged();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    partial void OnModifiedDateChanging(System.DateTime value);
    partial void OnModifiedDateChanged();
    #endregion
	
	public CountryRegion()
	{
		this._StateProvinces = new EntitySet<StateProvince>(new Action<StateProvince>(this.attach_StateProvinces), new Action<StateProvince>(this.detach_StateProvinces));
		OnCreated();
	}
	
	[Column(Storage="_CountryRegionCode", DbType="NVarChar(3) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
	public string CountryRegionCode
	{
		get
		{
			return this._CountryRegionCode;
		}
		set
		{
			if ((this._CountryRegionCode != value))
			{
				this.OnCountryRegionCodeChanging(value);
				this.SendPropertyChanging();
				this._CountryRegionCode = value;
				this.SendPropertyChanged("CountryRegionCode");
				this.OnCountryRegionCodeChanged();
			}
		}
	}
	
	[Column(Storage="_Name", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
	public string Name
	{
		get
		{
			return this._Name;
		}
		set
		{
			if ((this._Name != value))
			{
				this.OnNameChanging(value);
				this.SendPropertyChanging();
				this._Name = value;
				this.SendPropertyChanged("Name");
				this.OnNameChanged();
			}
		}
	}
	
	[Column(Storage="_ModifiedDate", DbType="DateTime NOT NULL")]
	public System.DateTime ModifiedDate
	{
		get
		{
			return this._ModifiedDate;
		}
		set
		{
			if ((this._ModifiedDate != value))
			{
				this.OnModifiedDateChanging(value);
				this.SendPropertyChanging();
				this._ModifiedDate = value;
				this.SendPropertyChanged("ModifiedDate");
				this.OnModifiedDateChanged();
			}
		}
	}
	
	[Association(Name="CountryRegion_StateProvince", Storage="_StateProvinces", ThisKey="CountryRegionCode", OtherKey="CountryRegionCode")]
	public EntitySet<StateProvince> StateProvinces
	{
		get
		{
			return this._StateProvinces;
		}
		set
		{
			this._StateProvinces.Assign(value);
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_StateProvinces(StateProvince entity)
	{
		this.SendPropertyChanging();
		entity.CountryRegion = this;
	}
	
	private void detach_StateProvinces(StateProvince entity)
	{
		this.SendPropertyChanging();
		entity.CountryRegion = null;
	}
}

[Table(Name="Person.StateProvince")]
public partial class StateProvince : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _StateProvinceID;
	
	private string _StateProvinceCode;
	
	private string _CountryRegionCode;
	
	private bool _IsOnlyStateProvinceFlag;
	
	private string _Name;
	
	private int _TerritoryID;
	
	private System.Guid _rowguid;
	
	private System.DateTime _ModifiedDate;
	
	private EntityRef<CountryRegion> _CountryRegion;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnStateProvinceIDChanging(int value);
    partial void OnStateProvinceIDChanged();
    partial void OnStateProvinceCodeChanging(string value);
    partial void OnStateProvinceCodeChanged();
    partial void OnCountryRegionCodeChanging(string value);
    partial void OnCountryRegionCodeChanged();
    partial void OnIsOnlyStateProvinceFlagChanging(bool value);
    partial void OnIsOnlyStateProvinceFlagChanged();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    partial void OnTerritoryIDChanging(int value);
    partial void OnTerritoryIDChanged();
    partial void OnrowguidChanging(System.Guid value);
    partial void OnrowguidChanged();
    partial void OnModifiedDateChanging(System.DateTime value);
    partial void OnModifiedDateChanged();
    #endregion
	
	public StateProvince()
	{
		this._CountryRegion = default(EntityRef<CountryRegion>);
		OnCreated();
	}
	
	[Column(Storage="_StateProvinceID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int StateProvinceID
	{
		get
		{
			return this._StateProvinceID;
		}
		set
		{
			if ((this._StateProvinceID != value))
			{
				this.OnStateProvinceIDChanging(value);
				this.SendPropertyChanging();
				this._StateProvinceID = value;
				this.SendPropertyChanged("StateProvinceID");
				this.OnStateProvinceIDChanged();
			}
		}
	}
	
	[Column(Storage="_StateProvinceCode", DbType="NChar(3) NOT NULL", CanBeNull=false)]
	public string StateProvinceCode
	{
		get
		{
			return this._StateProvinceCode;
		}
		set
		{
			if ((this._StateProvinceCode != value))
			{
				this.OnStateProvinceCodeChanging(value);
				this.SendPropertyChanging();
				this._StateProvinceCode = value;
				this.SendPropertyChanged("StateProvinceCode");
				this.OnStateProvinceCodeChanged();
			}
		}
	}
	
	[Column(Storage="_CountryRegionCode", DbType="NVarChar(3) NOT NULL", CanBeNull=false)]
	public string CountryRegionCode
	{
		get
		{
			return this._CountryRegionCode;
		}
		set
		{
			if ((this._CountryRegionCode != value))
			{
				if (this._CountryRegion.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnCountryRegionCodeChanging(value);
				this.SendPropertyChanging();
				this._CountryRegionCode = value;
				this.SendPropertyChanged("CountryRegionCode");
				this.OnCountryRegionCodeChanged();
			}
		}
	}
	
	[Column(Storage="_IsOnlyStateProvinceFlag", DbType="Bit NOT NULL")]
	public bool IsOnlyStateProvinceFlag
	{
		get
		{
			return this._IsOnlyStateProvinceFlag;
		}
		set
		{
			if ((this._IsOnlyStateProvinceFlag != value))
			{
				this.OnIsOnlyStateProvinceFlagChanging(value);
				this.SendPropertyChanging();
				this._IsOnlyStateProvinceFlag = value;
				this.SendPropertyChanged("IsOnlyStateProvinceFlag");
				this.OnIsOnlyStateProvinceFlagChanged();
			}
		}
	}
	
	[Column(Storage="_Name", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
	public string Name
	{
		get
		{
			return this._Name;
		}
		set
		{
			if ((this._Name != value))
			{
				this.OnNameChanging(value);
				this.SendPropertyChanging();
				this._Name = value;
				this.SendPropertyChanged("Name");
				this.OnNameChanged();
			}
		}
	}
	
	[Column(Storage="_TerritoryID", DbType="Int NOT NULL")]
	public int TerritoryID
	{
		get
		{
			return this._TerritoryID;
		}
		set
		{
			if ((this._TerritoryID != value))
			{
				this.OnTerritoryIDChanging(value);
				this.SendPropertyChanging();
				this._TerritoryID = value;
				this.SendPropertyChanged("TerritoryID");
				this.OnTerritoryIDChanged();
			}
		}
	}
	
	[Column(Storage="_rowguid", DbType="UniqueIdentifier NOT NULL")]
	public System.Guid rowguid
	{
		get
		{
			return this._rowguid;
		}
		set
		{
			if ((this._rowguid != value))
			{
				this.OnrowguidChanging(value);
				this.SendPropertyChanging();
				this._rowguid = value;
				this.SendPropertyChanged("rowguid");
				this.OnrowguidChanged();
			}
		}
	}
	
	[Column(Storage="_ModifiedDate", DbType="DateTime NOT NULL")]
	public System.DateTime ModifiedDate
	{
		get
		{
			return this._ModifiedDate;
		}
		set
		{
			if ((this._ModifiedDate != value))
			{
				this.OnModifiedDateChanging(value);
				this.SendPropertyChanging();
				this._ModifiedDate = value;
				this.SendPropertyChanged("ModifiedDate");
				this.OnModifiedDateChanged();
			}
		}
	}
	
	[Association(Name="CountryRegion_StateProvince", Storage="_CountryRegion", ThisKey="CountryRegionCode", OtherKey="CountryRegionCode", IsForeignKey=true)]
	public CountryRegion CountryRegion
	{
		get
		{
			return this._CountryRegion.Entity;
		}
		set
		{
			CountryRegion previousValue = this._CountryRegion.Entity;
			if (((previousValue != value) 
						|| (this._CountryRegion.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._CountryRegion.Entity = null;
					previousValue.StateProvinces.Remove(this);
				}
				this._CountryRegion.Entity = value;
				if ((value != null))
				{
					value.StateProvinces.Add(this);
					this._CountryRegionCode = value.CountryRegionCode;
				}
				else
				{
					this._CountryRegionCode = default(string);
				}
				this.SendPropertyChanged("CountryRegion");
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

public partial class TraerProvinciasResult
{
	
	private int _StateProvinceID;
	
	private string _StateProvinceCode;
	
	private string _CountryRegionCode;
	
	private bool _IsOnlyStateProvinceFlag;
	
	private string _Name;
	
	private int _TerritoryID;
	
	private System.Guid _rowguid;
	
	private System.DateTime _ModifiedDate;
	
	public TraerProvinciasResult()
	{
	}
	
	[Column(Storage="_StateProvinceID", DbType="Int NOT NULL")]
	public int StateProvinceID
	{
		get
		{
			return this._StateProvinceID;
		}
		set
		{
			if ((this._StateProvinceID != value))
			{
				this._StateProvinceID = value;
			}
		}
	}
	
	[Column(Storage="_StateProvinceCode", DbType="NChar(3) NOT NULL", CanBeNull=false)]
	public string StateProvinceCode
	{
		get
		{
			return this._StateProvinceCode;
		}
		set
		{
			if ((this._StateProvinceCode != value))
			{
				this._StateProvinceCode = value;
			}
		}
	}
	
	[Column(Storage="_CountryRegionCode", DbType="NVarChar(3) NOT NULL", CanBeNull=false)]
	public string CountryRegionCode
	{
		get
		{
			return this._CountryRegionCode;
		}
		set
		{
			if ((this._CountryRegionCode != value))
			{
				this._CountryRegionCode = value;
			}
		}
	}
	
	[Column(Storage="_IsOnlyStateProvinceFlag", DbType="Bit NOT NULL")]
	public bool IsOnlyStateProvinceFlag
	{
		get
		{
			return this._IsOnlyStateProvinceFlag;
		}
		set
		{
			if ((this._IsOnlyStateProvinceFlag != value))
			{
				this._IsOnlyStateProvinceFlag = value;
			}
		}
	}
	
	[Column(Storage="_Name", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
	public string Name
	{
		get
		{
			return this._Name;
		}
		set
		{
			if ((this._Name != value))
			{
				this._Name = value;
			}
		}
	}
	
	[Column(Storage="_TerritoryID", DbType="Int NOT NULL")]
	public int TerritoryID
	{
		get
		{
			return this._TerritoryID;
		}
		set
		{
			if ((this._TerritoryID != value))
			{
				this._TerritoryID = value;
			}
		}
	}
	
	[Column(Storage="_rowguid", DbType="UniqueIdentifier NOT NULL")]
	public System.Guid rowguid
	{
		get
		{
			return this._rowguid;
		}
		set
		{
			if ((this._rowguid != value))
			{
				this._rowguid = value;
			}
		}
	}
	
	[Column(Storage="_ModifiedDate", DbType="DateTime NOT NULL")]
	public System.DateTime ModifiedDate
	{
		get
		{
			return this._ModifiedDate;
		}
		set
		{
			if ((this._ModifiedDate != value))
			{
				this._ModifiedDate = value;
			}
		}
	}
}
#pragma warning restore 1591
