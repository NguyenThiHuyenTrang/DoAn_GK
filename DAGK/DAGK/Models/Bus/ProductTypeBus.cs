using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WEB2Connection;

namespace DAGK.Models.Bus
{
    public class ProductTypeBus
    {
        public static IEnumerable<ProductType> DanhSach()
        {
            var db = new WEB2ConnectionDB();
            return db.Query<ProductType>("select  * from ProductType where Deleted = 0");
        }
        public static IEnumerable<Product> ChiTiet(String id )
        {
            var db = new WEB2ConnectionDB();
            return db.Query<Product>("select  * from Product where ProductTypeID = '"+ id +"'");
        }
    }
}