




















// This file was automatically generated by the PetaPoco T4 Template
// Do not make changes directly to this file - edit the template instead
// 
// The following connection settings were used to generate this file
// 
//     Connection String Name: `WEB2Connection`
//     Provider:               `System.Data.SqlClient`
//     Connection String:      `Data Source=DESKTOP-E7DO0MP;Initial Catalog=WEB2;Integrated Security=True`
//     Schema:                 ``
//     Include Views:          `False`



using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PetaPoco;

namespace WEB2Connection
{

	public partial class WEB2ConnectionDB : Database
	{
		public WEB2ConnectionDB() 
			: base("WEB2Connection")
		{
			CommonConstruct();
		}

		public WEB2ConnectionDB(string connectionStringName) 
			: base(connectionStringName)
		{
			CommonConstruct();
		}
		
		partial void CommonConstruct();
		
		public interface IFactory
		{
			WEB2ConnectionDB GetInstance();
		}
		
		public static IFactory Factory { get; set; }
        public static WEB2ConnectionDB GetInstance()
        {
			if (_instance!=null)
				return _instance;
				
			if (Factory!=null)
				return Factory.GetInstance();
			else
				return new WEB2ConnectionDB();
        }

		[ThreadStatic] static WEB2ConnectionDB _instance;
		
		public override void OnBeginTransaction()
		{
			if (_instance==null)
				_instance=this;
		}
		
		public override void OnEndTransaction()
		{
			if (_instance==this)
				_instance=null;
		}
        

		public class Record<T> where T:new()
		{
			public static WEB2ConnectionDB repo { get { return WEB2ConnectionDB.GetInstance(); } }
			public bool IsNew() { return repo.IsNew(this); }
			public object Insert() { return repo.Insert(this); }

			public void Save() { repo.Save(this); }
			public int Update() { return repo.Update(this); }

			public int Update(IEnumerable<string> columns) { return repo.Update(this, columns); }
			public static int Update(string sql, params object[] args) { return repo.Update<T>(sql, args); }
			public static int Update(Sql sql) { return repo.Update<T>(sql); }
			public int Delete() { return repo.Delete(this); }
			public static int Delete(string sql, params object[] args) { return repo.Delete<T>(sql, args); }
			public static int Delete(Sql sql) { return repo.Delete<T>(sql); }
			public static int Delete(object primaryKey) { return repo.Delete<T>(primaryKey); }
			public static bool Exists(object primaryKey) { return repo.Exists<T>(primaryKey); }
			public static bool Exists(string sql, params object[] args) { return repo.Exists<T>(sql, args); }
			public static T SingleOrDefault(object primaryKey) { return repo.SingleOrDefault<T>(primaryKey); }
			public static T SingleOrDefault(string sql, params object[] args) { return repo.SingleOrDefault<T>(sql, args); }
			public static T SingleOrDefault(Sql sql) { return repo.SingleOrDefault<T>(sql); }
			public static T FirstOrDefault(string sql, params object[] args) { return repo.FirstOrDefault<T>(sql, args); }
			public static T FirstOrDefault(Sql sql) { return repo.FirstOrDefault<T>(sql); }
			public static T Single(object primaryKey) { return repo.Single<T>(primaryKey); }
			public static T Single(string sql, params object[] args) { return repo.Single<T>(sql, args); }
			public static T Single(Sql sql) { return repo.Single<T>(sql); }
			public static T First(string sql, params object[] args) { return repo.First<T>(sql, args); }
			public static T First(Sql sql) { return repo.First<T>(sql); }
			public static List<T> Fetch(string sql, params object[] args) { return repo.Fetch<T>(sql, args); }
			public static List<T> Fetch(Sql sql) { return repo.Fetch<T>(sql); }
			public static List<T> Fetch(long page, long itemsPerPage, string sql, params object[] args) { return repo.Fetch<T>(page, itemsPerPage, sql, args); }
			public static List<T> Fetch(long page, long itemsPerPage, Sql sql) { return repo.Fetch<T>(page, itemsPerPage, sql); }
			public static List<T> SkipTake(long skip, long take, string sql, params object[] args) { return repo.SkipTake<T>(skip, take, sql, args); }
			public static List<T> SkipTake(long skip, long take, Sql sql) { return repo.SkipTake<T>(skip, take, sql); }
			public static Page<T> Page(long page, long itemsPerPage, string sql, params object[] args) { return repo.Page<T>(page, itemsPerPage, sql, args); }
			public static Page<T> Page(long page, long itemsPerPage, Sql sql) { return repo.Page<T>(page, itemsPerPage, sql); }
			public static IEnumerable<T> Query(string sql, params object[] args) { return repo.Query<T>(sql, args); }
			public static IEnumerable<T> Query(Sql sql) { return repo.Query<T>(sql); }

		}

	}
	



    

	[TableName("dbo.DetailedInvoice")]



	[PrimaryKey("DetailedInvoiceID")]




	[ExplicitColumns]

    public partial class DetailedInvoice : WEB2ConnectionDB.Record<DetailedInvoice>  
    {



		[Column] public int DetailedInvoiceID { get; set; }





		[Column] public int? InvoiceID { get; set; }





		[Column] public string ProductID { get; set; }





		[Column] public decimal? Price { get; set; }





		[Column] public int? Quantity { get; set; }



	}

    

	[TableName("dbo.Disscount")]



	[PrimaryKey("DiscountID")]




	[ExplicitColumns]

    public partial class Disscount : WEB2ConnectionDB.Record<Disscount>  
    {



		[Column] public int DiscountID { get; set; }





		[Column] public string ProductID { get; set; }





		[Column] public int? Value { get; set; }



	}

    

	[TableName("dbo.Invoice")]



	[PrimaryKey("InvoiceID")]




	[ExplicitColumns]

    public partial class Invoice : WEB2ConnectionDB.Record<Invoice>  
    {



		[Column] public int InvoiceID { get; set; }





		[Column] public int? UserID { get; set; }





		[Column] public int? StatusID { get; set; }





		[Column] public DateTime? Date { get; set; }



	}

    

	[TableName("dbo.Producer")]



	[PrimaryKey("ProducerID", AutoIncrement=false)]


	[ExplicitColumns]

    public partial class Producer : WEB2ConnectionDB.Record<Producer>  
    {



		[Column] public string ProducerID { get; set; }





		[Column] public string ProducerName { get; set; }





		[Column] public string LoGo { get; set; }





		[Column] public long? Deleted { get; set; }



	}

    

	[TableName("dbo.Product")]



	[PrimaryKey("ProductID", AutoIncrement=false)]


	[ExplicitColumns]

    public partial class Product : WEB2ConnectionDB.Record<Product>  
    {



		[Column] public string ProductID { get; set; }





		[Column] public string ProductName { get; set; }





		[Column] public string ProductTypeID { get; set; }





		[Column] public string ProducerID { get; set; }





		[Column] public decimal? Price { get; set; }





		[Column] public int? Sold { get; set; }





		[Column] public int? Quantity { get; set; }





		[Column] public int? Viewed { get; set; }





		[Column] public DateTime? Date { get; set; }





		[Column] public string Description { get; set; }





		[Column] public string ImageURL { get; set; }





		[Column] public long? Deleted { get; set; }

        internal object ToPageList()
        {
            throw new NotImplementedException();
        }
    }

    

	[TableName("dbo.ProductDetail")]



	[PrimaryKey("ProductDetailedID", AutoIncrement=false)]


	[ExplicitColumns]

    public partial class ProductDetail : WEB2ConnectionDB.Record<ProductDetail>  
    {



		[Column] public string ProductDetailedID { get; set; }





		[Column] public string ProductID { get; set; }





		[Column] public string Screen { get; set; }





		[Column] public string OperatingSystem { get; set; }





		[Column] public string CPU { get; set; }





		[Column] public string Ram { get; set; }





		[Column] public string Pin { get; set; }



	}

    

	[TableName("dbo.ProductType")]



	[PrimaryKey("ProductTypeID", AutoIncrement=false)]


	[ExplicitColumns]

    public partial class ProductType : WEB2ConnectionDB.Record<ProductType>  
    {



		[Column] public string ProductTypeID { get; set; }





		[Column] public string ProductTypeName { get; set; }





		[Column] public long? Deleted { get; set; }



	}

    

	[TableName("dbo.Status")]



	[PrimaryKey("StatusID")]




	[ExplicitColumns]

    public partial class Status : WEB2ConnectionDB.Record<Status>  
    {



		[Column] public int StatusID { get; set; }





		[Column] public string StatusName { get; set; }



	}

    

	[TableName("dbo.User")]



	[PrimaryKey("UserID")]




	[ExplicitColumns]

    public partial class User : WEB2ConnectionDB.Record<User>  
    {



		[Column] public int UserID { get; set; }





		[Column] public int? UserTypeID { get; set; }





		[Column] public string Username { get; set; }





		[Column] public string Password { get; set; }





		[Column] public string Name { get; set; }





		[Column] public string Address { get; set; }





		[Column] public string Phone { get; set; }





		[Column] public string Birthday { get; set; }





		[Column] public long? Deleted { get; set; }



	}

    

	[TableName("dbo.UserType")]



	[PrimaryKey("UserTypeID")]




	[ExplicitColumns]

    public partial class UserType : WEB2ConnectionDB.Record<UserType>  
    {



		[Column] public int UserTypeID { get; set; }





		[Column] public string UserTypeName { get; set; }



	}


}
