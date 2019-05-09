using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyCongVan
{
    class Acc
    {
        private string username;
        public string Username
        {
            get { return username; }
            set { username = value; }
        }
        private string pass;
        public string Pass
        {
            get { return pass; }
            set { pass = value; }
        }
        private string name;
        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        private string sex;
        public string Sex
        {
            get { return sex; }
            set { name = value; }
        }
        private int type;
        public int Type
        {
            get { return type; }
            set { type = value; }
        }
        public Acc() { }
        public Acc(string username, string pass, string name, string sex, int type)
        {
            this.username = username;
            this.pass = pass;
            this.name = name;
            this.sex = sex;
            this.type = type;
        }
        public Acc(string s)
        {
            SqlCommand cmd = new SqlCommand();
            ConnectionDB con = new ConnectionDB(cmd);
            con.Sql = @"select * from ACC where USERNAME = '" + s + "'";
            DataTable dt = con.GetTable();

            username = dt.Rows[0][0].ToString();
            pass = dt.Rows[0][1].ToString();
            name = dt.Rows[0][2].ToString();
            sex = dt.Rows[0][3].ToString();
            type = Convert.ToInt32(dt.Rows[0][4].ToString());
        }    
        public void Login(frmMain f)
        {
            if (f.user == this.username)    //Đăng nhập sau khi lock
                f.Enabled = true;
            else
            {
                f = new frmMain();  //Đăng nhập tên mới thì mở lại
                f.Show();
            }
        }
        public void ChangePass(string p)
        {
            SqlCommand cmd = new SqlCommand();
            ConnectionDB con = new ConnectionDB(cmd);
            con.Sql = @"update ACC set pass = '" + p + "' where username = '" + username + "'";
            con.ExecuteReader();
        }
        public void Logout(frmMain f)
        {
            f.Visible = false;
        }
    }
}
