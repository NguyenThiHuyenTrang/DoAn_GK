using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WEB2Connection;

namespace DAGK.Models.Bus
{
    public class SHOPBus
    {
        public static IEnumerable<Product> DanhSach()
        {
            var db = new WEB2ConnectionDB();
            return db.Query<Product>("select  * from Product");
        }
        public static Product ChiTiet(int id )
        {
            var db = new WEB2ConnectionDB();
            return db.SingleOrDefault<Product>("select * from Product where ProductID = @0", id);
        }
    }
}