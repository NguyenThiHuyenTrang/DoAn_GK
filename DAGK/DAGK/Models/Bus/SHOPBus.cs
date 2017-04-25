using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WEB2Connection;
//@model IEnumerable<WEB2Connection.Product>

namespace DAGK.Models.Bus
{
    public class SHOPBus
    {
        public static IEnumerable<Product> DanhSach()
        {
            var db = new WEB2ConnectionDB();
            return db.Query<Product>("select  * from Product");
        }
        public static Product ChiTiet(String id )
        {
            var db = new WEB2ConnectionDB();
            return db.SingleOrDefault<Product>("select * from Product where ProductID = @0", id);
        }
        public static IEnumerable<WEB2Connection.Product> DanhSachProductAdmin()

        {
            var db = new WEB2ConnectionDB();
            return db.Query<Product>("Select * from Product");
        }

        public static void InsertProductAdmin(Product product)
        {
            var db = new WEB2ConnectionDB();
            db.Insert(product);

        }
    }
    
}

