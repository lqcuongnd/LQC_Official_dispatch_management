using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyCongVan
{
    public class ConnectionDB
    {
        // DESKTOP-S4SOSEA\SQLEXPRESS
        // DESKTOP-5I1CAVO\SQLEXPRESS
        string constr = @"Data Source = DESKTOP-5I1CAVO\SQLEXPRESS; Initial Catalog = QLCV; Integrated Security = true";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader reader;
        SqlDataAdapter ad;
        private string sql;
        public string Sql { get => sql; set => sql = value; }

        public SqlConnection getConnect() //Nhận chuỗi kết nối
        {
            return new SqlConnection(constr);
        }

        public ConnectionDB(SqlCommand cmd)
        {
            this.cmd = cmd;
            con = new SqlConnection(constr);
            cmd.Connection = con;
        }

        public SqlDataReader ExecuteReader()
        {           
            try
            {
                if (reader != null && !reader.IsClosed)
                    reader.Close();
                if (cmd.Connection.State == ConnectionState.Closed)
                    cmd.Connection.Open();
                cmd.CommandText = this.sql;
                reader = cmd.ExecuteReader();
                return reader;
            }
            catch (SqlException ex)
            {
                Closed();
                throw ex;
            }
        }


        public DataTable GetTable()
        {
            con = new SqlConnection();
            con = getConnect();

            ad = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            return (dt);
        }

        //Hàm đếm 1 cái gì đó
        public int count()
        {
            con = new SqlConnection();
            con = getConnect();

            ad = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            ad.Fill(dt);

            string cc = dt.Rows[0][0].ToString();
            int c = Convert.ToInt32(cc);

            return c;
        }
        public void Closed()
        {
            if (reader != null && !reader.IsClosed)
                reader.Close();
            if (cmd.Connection.State != ConnectionState.Closed)
                cmd.Connection.Close();
        }

    }
}
