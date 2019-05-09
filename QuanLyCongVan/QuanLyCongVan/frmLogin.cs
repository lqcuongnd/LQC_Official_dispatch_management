using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyCongVan
{
    public partial class frmLogin : Form
    {
        //private Acc account;
        frmMain f;
        public frmLogin(frmMain f)
        {
            InitializeComponent();
            this.f = f;
        }

        private void ChkShowpass_OnChange(object sender, EventArgs e)
        {
            if (ChkShowpass.Checked == true)
            {
                txtPass.isPassword = false;
            }
            else
            {
                txtPass.isPassword = true;
            }
        }

        public void btnLogin_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            ConnectionDB con = new ConnectionDB(cmd);
            con.Sql = @"select * from ACC where USERNAME = '" + txtUsername.Text + "' and PASS = '" + txtPass.Text + "'";
            DataTable ac = con.GetTable();
            SqlDataReader rd = con.ExecuteReader();
            if (rd.Read())
            {
                string s = ac.Rows[0][0].ToString();
                //string s2 = ac.Rows[0][2].ToString();
                f.Login(s);
                this.Close();
            }
            else
            {
                MessageBox.Show("Đăng nhập thất bại");
            }
        }

        private void frmLogin_Load(object sender, EventArgs e)
        {

        }

        private void btnClose_MouseHover(object sender, EventArgs e)
        {
            btnClose.Image = Image.FromFile(@"..\..\\Resources\\Close2.png");
        }

        private void btnClose_MouseLeave(object sender, EventArgs e)
        {
            btnClose.Image = Image.FromFile(@"..\..\\Resources\\Close.png");
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            DialogResult traloi = MessageBox.Show("Do you really want to exit?", "", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (traloi == DialogResult.OK)
                Application.Exit();
        }

        private void txtUsername_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == 13)
            {
                btnLogin_Click(sender, e);
            }
        }

        private void txtPass_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == 13)
            {
                btnLogin_Click(sender, e);
            }
        }

        bool movefrm;   int x, y;
        private void picBack_MouseUp(object sender, MouseEventArgs e)
        {
            movefrm = false;
        }

        private void picBack_MouseMove(object sender, MouseEventArgs e)
        {
            if (movefrm)
            {
                this.SetDesktopLocation(Cursor.Position.X - x, Cursor.Position.Y - y);
            }
        }

        private void chkPass_Click(object sender, EventArgs e)
        {
            if (ChkShowpass.Checked == true)
            {
                ChkShowpass.Checked = false;
            }
            else
            {
                ChkShowpass.Checked = true;
            }
        }

        private void picBack_MouseDown(object sender, MouseEventArgs e)
        {
            movefrm = true; x = e.X; y = e.Y;
        }
    }
}
