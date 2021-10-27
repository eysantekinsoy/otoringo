using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace otoringo
{
    public class sqlsinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-DKJBJLBK\SQLEXPRESS;Initial Catalog=otoringo;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}