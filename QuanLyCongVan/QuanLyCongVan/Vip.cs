using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyCongVan
{
    class Vip : Acc
    {
        //Khởi tạo 1 Vip từ 1 Acc
        public Vip(Acc ac)
        {
            this.Username = ac.Username;
            this.Pass = ac.Pass;
            this.Name = ac.Name;
            this.Sex = ac.Sex;
            this.Type = ac.Type;
        }

        SqlCommand cmd;
        ConnectionDB con;

        //tải danh sách accounts
        public DataTable LoadAccounts()
        {
            cmd = new SqlCommand();
            con = new ConnectionDB(cmd);
            con.Sql = @"select * from ACC";
            return con.GetTable();
        }        
        //Get thông tin 1 acc khi biết username
        public Acc GetAcc(string s)
        {
            cmd = new SqlCommand();
            con = new ConnectionDB(cmd);
            con.Sql = @"select * from ACC where USERNAME = '" + s + "'";
            DataTable dt = con.GetTable();
            Acc ac = new Acc(dt.Rows[0][0].ToString(), dt.Rows[0][1].ToString(), dt.Rows[0][2].ToString(), dt.Rows[0][3].ToString(), Convert.ToInt32(dt.Rows[0][4].ToString()));
            return ac;
        }        
        //Đếm số lượng tài khoản trong hệ thống
        public int CountAccount()
        {
            cmd = new SqlCommand();
            con = new ConnectionDB(cmd);
            con.Sql = @"select count(*) from ACC";
            return con.count();
        }        
        //THÊM TÀI KHOẢN
        public int AddAcc(Acc a)
        {
            SqlCommand cmd = new SqlCommand();
            ConnectionDB con = new ConnectionDB(cmd);

            con.Sql = @"select * from ACC where USERNAME = '" + a.Username + "'";
            con.ExecuteReader();
            SqlDataReader rd = con.ExecuteReader();
            if (rd.Read())
            {
                return 2;   //Có tên tk này rồi
            }

            con.Sql = @"insert into ACC values (" + "N'" + a.Username + "',N'" + a.Pass + "',N'" + a.Name + "',N'" + a.Sex + "'," + a.Type.ToString() + ")";
            
            rd = con.ExecuteReader();

            if (rd.Read())
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }        
        //SỬA TÀI KHOẢN
        public int EditAcc(string us, string us2, string pass2, string uname2, string sex2, int type2)
        {
            cmd = new SqlCommand();
            con = new ConnectionDB(cmd);

            con.Sql = @"select * from ACC where USERNAME = '" + us + "'";
            con.ExecuteReader();
            SqlDataReader rd = con.ExecuteReader();

            if (!rd.Read())
            {
                return 2;   //acc ko tồn tại
            }

            con.Sql = @"update ACC set username = '" + us2 + "', pass = '" + pass2 + "', uname = '" + uname2 + "', sex = '" + sex2 + "', utype ='" + type2 + "' where username = '" + us + "'";

            rd = con.ExecuteReader();

            if (rd.Read())
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }        
        //XÓA TÀI KHOẢN
        public int DelAcc(string DelUsername)
        {
            //ExecuteReader
            cmd = new SqlCommand();
            con = new ConnectionDB(cmd);

            con.Sql = @"select * from ACC where USERNAME = '" + DelUsername + "'";
            con.ExecuteReader();
            SqlDataReader rd = con.ExecuteReader();

            if (!rd.Read())
            {
                return 2;   //acc ko tồn tại
            }

            con.Sql = @"delete from ACC where username = '" + DelUsername + "'";

            rd = con.ExecuteReader();

            if (rd.Read())
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }                
    }
}

