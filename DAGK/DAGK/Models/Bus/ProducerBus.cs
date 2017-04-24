using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WEB2Connection;

namespace DAGK.Models.Bus
{
    public class ProducerBus
    {
        public static IEnumerable<Producer> DanhSach()
        {
            var db = new WEB2ConnectionDB();
            return db.Query<Producer>("select  * from Producer where Deleted = 0");
        }
        public static IEnumerable<Product> ChiTiet(String id)
        {
            var db = new WEB2ConnectionDB();
            return db.Query<Product>("select  * from Product where ProducerID = '"+ id + "' ");
        }
    }
}