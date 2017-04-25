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
            return db.Query<Producer>("select  * from Producer  ");
        }

        internal static object DanhSachProducer()
        {
            throw new NotImplementedException();
        }

        public static IEnumerable<Product> ChiTiet(String id)
        {
            var db = new WEB2ConnectionDB();
            return db.Query<Product>("select  * from Product where ProducerID = '"+ id + "' ");
        }

        public static IEnumerable<WEB2Connection.Producer> DanhSachProducerAdmin()

        {
            var db = new WEB2ConnectionDB();
            return db.Query<Producer>("Select * from Producer where Deleted !=1");
        }

        public static void InsertProducerAdmin(Producer producer)
        {
            var db = new WEB2ConnectionDB();
            db.Insert(producer);

        }

        internal static void CreateProducerAdmin(Producer producer)
        {
            throw new NotImplementedException();
        }
    }
}