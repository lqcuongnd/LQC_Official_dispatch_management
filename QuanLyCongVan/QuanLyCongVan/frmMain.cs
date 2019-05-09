using DevExpress.Utils.Animation;
using DevExpress.XtraBars.Navigation;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Windows.Documents;
using System.Windows.Forms;

namespace QuanLyCongVan
{
    //LQC Office dispatch management

    public partial class frmMain : DevExpress.XtraEditors.XtraForm
    {
        private Acc ac;
        private Vip vip;
        private CongvandiAdapter CvDi;
        private CongvandenAdapter CvDen;
        public string user = "";
        //==================================================================================================================
        public frmMain()
        {
            InitializeComponent();

            ACCtable.DefaultCellStyle.WrapMode = DataGridViewTriState.True;
            ACCtable.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;

            CVDiTable.DefaultCellStyle.WrapMode = DataGridViewTriState.True;
            CVDiTable.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;

            CVDenTable.DefaultCellStyle.WrapMode = DataGridViewTriState.True;
            CVDenTable.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;
        }
        //==================================================================================================================

        private void frmMain_Load(object sender, EventArgs e)
        {
            this.Hide();
            frmLogin f = new frmLogin(this);
            f.ShowDialog(this);

            NapTheloaiDi();
            NapCQSoanthao();
            NapTLCVDen();
            NapNoiLuuCvDen();


            cboMaTL1.SelectedIndex = 0;
            cboDokhan2.SelectedIndex = 0;
            cboDokhan1.SelectedIndex = 0;
            cboDomat2.SelectedIndex = 0;
            cboDomat1.SelectedIndex = 0;


            dateNgayden.DateTime = DateTime.Now;
            dateNgayPH1.DateTime = DateTime.Now;
            dateNgayPH2.DateTime = DateTime.Now;

            CvDi = new CongvandiAdapter();
            CvDen = new CongvandenAdapter();

            MainMenu.SelectedItem = MainMenu.Items[0];
        }
        //==================================================================================================================

        public void Login(string s)
        {
            ac = new Acc(s);
            lblAcc.Text = ac.Name;
            user = ac.Username;
            this.Enabled = true;

            if (ac.Sex == "Nam")
                picAcc.Image = Image.FromFile(@"..\..\\Resources\\acc - nam.png");
            else
                picAcc.Image = Image.FromFile(@"..\..\\Resources\\acc - nu.png");

            if (ac.Type == 1)
            {
                vip=new Vip(ac);
            }
        }
        //==================================================================================================================

        /*
         * ***************************** THANH TIÊU ĐỀ *******************************************
        */
        private void picClose_Click(object sender, EventArgs e)
        {
            DialogResult traloi = MessageBox.Show("Do you really want to exit?", "", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (traloi == DialogResult.OK)
                Application.Exit();
        }
        private void picMinimized_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }
        private void picMinimized_MouseHover(object sender, EventArgs e)
        {
            picMinimized.Image = Image.FromFile(@"..\..\\Resources\\Minimize2.png");
        }
        private void picMinimized_MouseLeave(object sender, EventArgs e)
        {
            picMinimized.Image = Image.FromFile(@"..\..\\Resources\\Minimize.png");
        }
        private void PicMaxximum_MouseHover(object sender, EventArgs e)
        {
            PicMaxximum.Image = Image.FromFile(@"..\..\\Resources\\Maximum2.png");
        }
        private void PicMaxximum_MouseLeave(object sender, EventArgs e)
        {
            PicMaxximum.Image = Image.FromFile(@"..\..\\Resources\\Maximum.png");
        }
        private void picClose_MouseHover(object sender, EventArgs e)
        {
            picClose.Image = Image.FromFile(@"..\..\\Resources\\Close2.png");
        }
        private void picClose_MouseLeave(object sender, EventArgs e)
        {
            picClose.Image = Image.FromFile(@"..\..\\Resources\\Close.png");
        }
        //Phóng to và di chuyển form
        bool movefrm; int x, y;
        private void PicMaxximum_Click(object sender, EventArgs e)
        {
            Size formSize = new Size(Screen.GetWorkingArea(this).Width, Screen.GetWorkingArea(this).Height);
            if (this.Size.Width * this.Size.Height != formSize.Width * formSize.Height)
            {
                this.StartPosition = FormStartPosition.Manual;
                this.Location = new Point(0, 0);                
                this.Size = new Size(formSize.Width, formSize.Height);
            }
            else
            {
                this.Size = new Size(1280, 720);
                this.CenterToScreen();
            }
        }    
        private void picTitle_MouseDown(object sender, MouseEventArgs e)
        {
            movefrm = true; x = e.X; y = e.Y;
        }
        private void picTitle_MouseUp(object sender, MouseEventArgs e)
        {
            movefrm = false;
        }    
        private void picTitle_MouseMove(object sender, MouseEventArgs e)
        {
            //Đang phóng to thì ko di chuyển
            Size formSize = new Size(Screen.GetWorkingArea(this).Width, Screen.GetWorkingArea(this).Height);
            if (this.Size.Width * this.Size.Height == formSize.Width * formSize.Height)
                return;
            //Ngược lại thì di chuyển
            if (movefrm)
            {
                this.SetDesktopLocation(Cursor.Position.X - 262 - x, Cursor.Position.Y - y);
            }
        }
        bool movefrm2; int x2, y2;
        private void panAcc_MouseUp(object sender, MouseEventArgs e)
        {
            movefrm2 = false;
        }
        private void panAcc_MouseDown(object sender, MouseEventArgs e)
        {
            movefrm2 = true; x2 = e.X; y2 = e.Y;
        }
        private void panAcc_MouseMove(object sender, MouseEventArgs e)
        {
            //Đang phóng to thì ko di chuyển
            Size formSize = new Size(Screen.GetWorkingArea(this).Width, Screen.GetWorkingArea(this).Height);
            if (this.Size.Width * this.Size.Height == formSize.Width * formSize.Height)
                return;
            //Ngược lại thì di chuyển
            if (movefrm2)
            {
                this.SetDesktopLocation(Cursor.Position.X - x2, Cursor.Position.Y - y2);
            }
        }
        bool movefrm3; int x3, y3;


        private void panelTitle_MouseDown(object sender, MouseEventArgs e)
        {
            movefrm3 = true; x3 = e.X; y3 = e.Y;
        }
        private void panelTitle_MouseUp(object sender, MouseEventArgs e)
        {
            movefrm3 = false;
        }
        private void panelTitle_MouseMove(object sender, MouseEventArgs e)
        {
            //Đang phóng to thì ko di chuyển
            Size formSize = new Size(Screen.GetWorkingArea(this).Width, Screen.GetWorkingArea(this).Height);
            if (this.Size.Width * this.Size.Height == formSize.Width * formSize.Height)
                return;
            //Ngược lại thì di chuyển
            if (movefrm3)
            {
                this.SetDesktopLocation(Cursor.Position.X - 262 - 918 - x3, Cursor.Position.Y - y3);
            }
        }
        /*
         ************************** XONG PHẦN THANH TIÊU ĐỀ **************************
        */
        
        //*******************************MENU CHÍNH**********************************
        private void MainMenu_SelectedItemChanged(object sender, DevExpress.XtraBars.Navigation.NavigationBarItemEventArgs e)
        {
            if (MainMenu.SelectedItem == MainMenu.Items[0])
            {                
                CVDiTable.DataSource = CvDi.LoadCV(lblNam.Text);
                CVDiTable.DefaultCellStyle.Font = new Font("Tahoma", 10);



                tabLeftMenu.SelectedPageIndex = 0;
                //TaoHieuUngTabMain(0);
                tabPanMain.SelectedPageIndex=0;

                panSelect.Location = new Point(0, 49);
                panSelect.Size = new Size(170, 10);
            }
            else if(MainMenu.SelectedItem == MainMenu.Items[1])
            {
                SqlCommand cmd = new SqlCommand();
                ConnectionDB con = new ConnectionDB(cmd);
                con.Sql = @"select * from VANBANDEN";
                CVDenTable.DataSource = con.GetTable();
                CVDenTable.DefaultCellStyle.Font = new Font("Tahoma", 10);

                cboLocCvDen.SelectedIndex = 0;

                tabLeftMenu.SelectedPageIndex = 1;
                //TaoHieuUngTabMain(1);
                tabPanMain.SelectedPageIndex = 2;
                panSelect.Location = new Point(170, 49);
                panSelect.Size = new Size(189, 10);
            }
            else if (MainMenu.SelectedItem == MainMenu.Items[2])
            {
                tabLeftMenu.SelectedPageIndex = 2;
                //TaoHieuUngTabMain(2);
                tabPanMain.SelectedPageIndex = 3;
                panSelect.Location = new Point(359, 49);
                panSelect.Size = new Size(220, 10);
            }
            else if (MainMenu.SelectedItem == MainMenu.Items[3])
            {
                panSelect.Location = new Point(579, 49);
                panSelect.Size = new Size(172, 10);
                tabLeftMenu.SelectedPageIndex = 3;
                //TaoHieuUngTabMain(3);
                tabPanMain.SelectedPageIndex = 7;
            }
            else if (MainMenu.SelectedItem == MainMenu.Items[4])
            {
                if (ac.Type == 2)
                {
                    return;
                }
                panSelect.Location = new Point(752, 49);
                panSelect.Size = new Size(225, 10);
                tabLeftMenu.SelectedPageIndex = 4;
                //TaoHieuUngTabMain(4);
                tabPanMain.SelectedPage = QuanlyAcc;
                Quanlytaikhoan();


            }
            else if (MainMenu.SelectedItem == MainMenu.Items[5])
            {
                if (ac.Type == 2)
                {
                    return;
                }
                panSelect.Location = new Point(978, 49);
                panSelect.Size = new Size(125, 10);
                tabLeftMenu.SelectedPageIndex = 5;
                //TaoHieuUngTabMain(5);
                tabPanMain.SelectedPage = QuanlyPhongBan;
            }
            else if(MainMenu.SelectedItem == MainMenu.Items[6])
            {
                panSelect.Location = new Point(1104, 49);
                panSelect.Size = new Size(100, 10);
                tabPanMain.SelectedPage = About;
            }
        }
        //==================================================================================================================





        private void btnTracuucongvandi_Click(object sender, EventArgs e)
        {
            tabPanMain.SelectedPageIndex = 4;
        }
        //==================================================================================================================

        private void DropNam_onItemSelected(object sender, EventArgs e)
        {
            lblNam.Text = DropNam.selectedValue.ToString();
        }
        //==================================================================================================================

        private void btnLock_OnValueChange(object sender, EventArgs e)
        {
            if (btnLock.Value == true)
            {
                //this.Visible = false;
                //frmLogin f = new frmLogin(this);
                //f.ShowDialog();
                tabLeftMenu.Enabled = true;
                tabPanMain.Enabled = true;
                MainMenu.Enabled = true;
                DropNam.Enabled = true;
            }
            else
            {
                tabLeftMenu.Enabled = false;
                tabPanMain.Enabled = false;
                MainMenu.Enabled = false;
                DropNam.Enabled = false;
            }
        }
        //==================================================================================================================
        //SỬA THÔNG TIN TÀI KHOẢN (PASS)
        private void btnSuathogtinAcc_Click(object sender, EventArgs e)
        {

        }
        //==================================================================================================================

       


        //*************************************************************************************************************************************
        //*************************************************************************************************************************************
        //*********************************************              QUẢN LÝ TÀI KHOẢN               ******************************************
        //*************************************************************************************************************************************
        //*************************************************************************************************************************************

        private void Quanlytaikhoan()
        {
            ACCtable.DataSource = vip.LoadAccounts();
            lblTongtaikhoan.Text = "Tổng số tài khoản: " + vip.CountAccount().ToString();
        }

        private void btnThemAcc_Click(object sender, EventArgs e)
        {
            if(txtTentaikhoan.Text == "" || txtPass.Text=="" || txtTen.Text == "" || (radNam.Checked == false && radNu.Checked == false))
            {
                return;
            }
            string sex = (radNam.Checked == true) ? "Nam" : "Nữ";
            int type = (chkAdmin.Checked == true) ? 1 : 2;
            Acc newac = new Acc(txtTentaikhoan.Text, txtPass.Text, txtTen.Text, sex, type);

            int x = vip.AddAcc(newac);

            if (x == 2)
            {
                lblThongbaoAccMan.Text = "Trùng tên tài khoản đã có!";
            }
            else if (x == 1)
            {
                lblThongbaoAccMan.Text = "Đã thêm tài khoản " + txtTentaikhoan.Text +"!";
            }
            ACCtable.DataSource = vip.LoadAccounts();
        }

        //CLICK VÀO AI THÌ THÔNG TIN NẠP VÀO TEXTBOX
        private void ACCtable_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow row = ACCtable.Rows[e.RowIndex];

            txtTentaikhoan.Text = row.Cells["username"].Value.ToString();
            txtPass.Text = row.Cells["pass"].Value.ToString();
            txtTen.Text = row.Cells["uname"].Value.ToString();
            if(row.Cells["sex"].Value.ToString() == "Nam")
            {
                radNam.Checked = true;
                radNu.Checked = false;
            }
            else
            {
                radNam.Checked = false;
                radNu.Checked = true;
            }
            chkAdmin.Checked = (row.Cells["utype"].Value.ToString() == "1") ? true : false;
        }
        //Xóa Acc được chọn
        private void btnXoaAcc_Click(object sender, EventArgs e)
        {
            foreach (DataGridViewRow row in ACCtable.SelectedRows)
            {
                string s = row.Cells["username"].Value.ToString();
                if (s == ac.Username || s == vip.Username)  //không tự xóa mình đc
                    continue;
                vip.DelAcc(s); 
            }
            ACCtable.DataSource = vip.LoadAccounts();
        }

        private void btnSuaAcc_Click(object sender, EventArgs e)
        {
            if (ACCtable.SelectedRows.Count > 1 || txtTentaikhoan.Text == "" || txtPass.Text == "" || txtTen.Text == "" || (radNam.Checked == false && radNu.Checked == false))
                return;

            string usCu = "", sex;
            int ty;
            foreach (DataGridViewRow row in ACCtable.SelectedRows)
            {
                usCu = row.Cells["username"].Value.ToString();
                break;
            }

            if (radNam.Checked == true)
            {
                sex = "Nam";
            }
            else
            {
                sex = "Nữ";
            }
            ty = (chkAdmin.Checked == true) ? 1 : 2;

            int x = vip.EditAcc(usCu,txtTentaikhoan.Text,txtPass.Text,txtTen.Text,sex,ty);

            if (x == 2)
            {
                lblThongbaoAccMan.Text = "Trùng tên tài khoản đã có!";
            }
            else if (x == 1)
            {
                lblThongbaoAccMan.Text = "Đã thêm tài khoản " + txtTentaikhoan.Text + "!";
            }
            ACCtable.DataSource = vip.LoadAccounts();
        }
        
        private void txt1_Click(object sender, EventArgs e) { txtTentaikhoan.Focus(); }
        private void txt2_Click(object sender, EventArgs e) { txtPass.Focus(); }
        private void txt3_Click(object sender, EventArgs e) { txtTen.Focus(); }

        //*************************************************************************************************************************************
        //*************************************************************************************************************************************
        //********************************************************XONG QUẢN LÝ TÀI KHOẢN*******************************************************
        //*************************************************************************************************************************************
        //*************************************************************************************************************************************



        //*************************************************************************************************************************************
        //*************************************************************************************************************************************
        //*********************************************                 CÔNG VĂN ĐI                  ******************************************
        //*************************************************************************************************************************************
        //*************************************************************************************************************************************

        //BỘ LỌC XEM CÔNG VĂN ĐI
        private void cboLocCvDi_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*
            if (cboLocCvDi.SelectedValue.ToString() == "Tất cả")
                return;
            cboLocMaCvDi.SelectedIndex = cboLocCvDi.SelectedIndex;
            
            DataView view = (DataView)CVDiTable.DataSource;
            view.RowFilter = "MATL1 like '%" + cboLocMaCvDi.SelectedValue.ToString() +"%'";
            CVDiTable.DataSource = view;*/
        }

        //TRỞ VỀ CV ĐI
        private void btnBackCVDi_Click(object sender, EventArgs e)
        {
            tabPanMain.SelectedPage = Congvandi;
        }
        //==================================================================================================================
        //CLICK ĐÚP VÔ 1 DÒNG CV ĐI
        private void CVDiTable_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex > -1)
            {
                //Congvandi cv = new Congvandi();

                DataGridViewRow row = CVDiTable.Rows[e.RowIndex];

                cboMaTL1.Text = row.Cells[1].Value.ToString();
                txtSoVB1.Text = row.Cells[2].Value.ToString();
                txtMaVb1.Text = row.Cells[3].Value.ToString();
                dateNgayPH1.Text = row.Cells[4].Value.ToString();
                cboDomat1.Text = row.Cells[5].Value.ToString();
                cboDokhan1.Text = row.Cells[6].Value.ToString();
                txtTrichyeu1.Text = row.Cells[7].Value.ToString();
                txtPheduyet1.Text = row.Cells[8].Value.ToString();
                txtNguoiky1.Text = row.Cells[9].Value.ToString();
                txtSoban1.Text = row.Cells[10].Value.ToString();
                txtSoto1.Text = row.Cells[11].Value.ToString();
                txtNoinhan1.Text = row.Cells[12].Value.ToString();
                cboCQSoanthao.Text = row.Cells[13].Value.ToString();
                txtYkiencd1.Text = row.Cells[14].Value.ToString();
                txtSohop1.Text = row.Cells[15].Value.ToString();
                txtSTThop1.Text = row.Cells[16].Value.ToString();
                txtGhichu1.Text = row.Cells[17].Value.ToString();
                txtNguoinhap1.Text = row.Cells[18].Value.ToString();

                panNhapsuacongvandi.Enabled = false;
                btnNhapSuaCVDi.Text = "Sửa";
                tabPanMain.SelectedPage = Nhapcvdi;
            }
        }
        //==================================================================================================================
        private void RefreshNhapCvDi()
        {
            GetSoCVDi();
            txtSoVB1.Text = (Convert.ToInt32(txtSoVB1.Text) + 1).ToString();

            txtMaVb1.Text = "";
            dateNgayPH1.DateTime = DateTime.Now;
            cboDomat1.SelectedIndex = 0;
            cboDokhan1.SelectedIndex = 0;
            txtTrichyeu1.Text = "";
            txtPheduyet1.Text = "";
            txtNguoiky1.Text = "";
            txtSoban1.Text = "1";
            txtSoto1.Text = "1";
            txtNoinhan1.Text = "";
            cboCQSoanthao.SelectedIndex =0;
            txtYkiencd1.Text = "";
            txtSohop1.Text = "0";
            txtSTThop1.Text = "0";
            txtGhichu1.Text = "";
            txtNguoinhap1.Text = "";
        }



        //NÚT NHẬP/SỬA CÔNG VĂN ĐI
        private void btnNhapSuaCVDi_Click(object sender, EventArgs e)
        {
            if (btnNhapSuaCVDi.Text == "Sửa")
            {
                panNhapsuacongvandi.Enabled = true;
                cboMaTL1.Enabled = false;
                btnNhapSuaCVDi.Text = "Xong";
            }
            else if(btnNhapSuaCVDi.Text == "Xong")
            {
                //Sửa cv
                DataGridViewRow row = CVDiTable.Rows[CVDiTable.CurrentCell.RowIndex];

                string nam = row.Cells[0].Value.ToString();
                string matl = row.Cells[1].Value.ToString();
                string sovb = row.Cells[2].Value.ToString();

                Congvandi cv = new Congvandi();

                cv.Nam = Convert.ToInt32(lblNam.Text);
                cv.MaTl = cboMaTL1.Text;
                cv.SoVb = Convert.ToInt32(txtSoVB1.Text);
                cv.MaVb = txtMaVb1.Text;
                cv.NgayPh = dateNgayPH1.DateTime;
                cv.DoMat = cboDomat1.Text;
                cv.DoKhan = cboDokhan1.Text;
                cv.Trichyeu = txtTrichyeu1.Text;
                cv.Pheduyet = txtPheduyet1.Text;
                cv.Nguoiky = txtNguoiky1.Text;

                string soban = txtSoban1.Text;
                if (soban == "" || soban == "0")
                    cv.SoBan = -1;
                else
                    cv.SoBan = Convert.ToInt32(soban);

                string soto = txtSoto1.Text;
                if (soto == "" || soto == "0")
                    cv.SoTo = -1;
                else
                    cv.SoTo = Convert.ToInt32(soban);

                cv.NoiNhan = txtNoinhan1.Text;
                cv.CqSoanthao = cboCQSoanthao.Text;
                cv.YkienCd = txtYkiencd1.Text;

                string sohop = txtSohop1.Text;
                if (sohop == "" || sohop == "0")
                    cv.SoHop = -1;
                else
                    cv.SoHop = Convert.ToInt32(sohop);

                string stthop = txtSTThop1.Text;
                if (stthop == "" || stthop == "0")
                    cv.SttHop = -1;
                else
                    cv.SttHop = Convert.ToInt32(stthop);

                cv.Ghichu = txtGhichu1.Text;
                cv.NguoiNhap = txtNguoinhap1.Text;

                //CvDi = new CongvandiAdapter();

                CvDi.Cv = cv;
                string edit = ac.Name + " chỉnh sửa ngày " + DateTime.Now.ToString();

                CvDi.SuaCvdi(nam, matl, sovb, edit);

                CVDiTable.DataSource = CvDi.LoadCV(lblNam.Text);

                btnNhapSuaCVDi.Text = "Nhập mới";
            }
            else if(btnNhapSuaCVDi.Text == "Nhập mới")
            {
                RefreshNhapCvDi();
                cboMaTL1.Enabled = true;
                btnNhapSuaCVDi.Text = "Nhập";
            }
            else if(btnNhapSuaCVDi.Text == "Nhập")
            {
                if (txtMaVb1.Text == "" || txtTrichyeu1.Text == "")
                    return;

                //Nhập 1 cv mới vào database

                cboMaTL1.Enabled = true;

                //DataGridViewRow row = CVDiTable.Rows[CVDiTable.CurrentCell.RowIndex];

                //string nam = row.Cells[0].Value.ToString();
                //string matl = row.Cells[1].Value.ToString();
                //string sovb = row.Cells[2].Value.ToString();

                Congvandi cv = new Congvandi();

                cv.Nam = Convert.ToInt32(lblNam.Text);
                cv.MaTl = cboMaTL1.Text;
                cv.SoVb = Convert.ToInt32(txtSoVB1.Text);
                cv.MaVb = txtMaVb1.Text;
                cv.NgayPh = dateNgayPH1.DateTime;
                cv.DoMat = cboDomat1.Text;
                cv.DoKhan = cboDokhan1.Text;
                cv.Trichyeu = txtTrichyeu1.Text;
                cv.Pheduyet = txtPheduyet1.Text;
                cv.Nguoiky = txtNguoiky1.Text;

                string soban = txtSoban1.Text;
                if (soban == "" || soban == "0")
                    cv.SoBan = -1;
                else
                    cv.SoBan = Convert.ToInt32(soban);

                string soto = txtSoto1.Text;
                if (soto == "" || soto == "0")
                    cv.SoTo = -1;
                else
                    cv.SoTo = Convert.ToInt32(soban);

                cv.NoiNhan = txtNoinhan1.Text;
                cv.CqSoanthao = cboCQSoanthao.Text;
                cv.YkienCd = txtYkiencd1.Text;

                string sohop = txtSohop1.Text;
                if (sohop == "" || sohop == "0")
                    cv.SoHop = -1;
                else
                    cv.SoHop = Convert.ToInt32(sohop);

                string stthop = txtSTThop1.Text;
                if (stthop == "" || stthop == "0")
                    cv.SttHop = -1;
                else
                    cv.SttHop = Convert.ToInt32(stthop);

                cv.Ghichu = txtGhichu1.Text;
                cv.NguoiNhap = ac.Name;

                //CvDi = new CongvandiAdapter();

                CvDi.Cv = cv;

                CvDi.ThemCvdi();

                CVDiTable.DataSource = CvDi.LoadCV(lblNam.Text);

                RefreshNhapCvDi();
            }
        }
        //==================================================================================================================

        //BTN NHẬP MỚI CÔNG VĂN ĐI
        private void btnNhapcongvandi_Click(object sender, EventArgs e)
        {
            GetSoCVDi();
            RefreshNhapCvDi();
            btnNhapSuaCVDi.Text = "Nhập";
            cboMaTL1.Enabled = true;
            panNhapsuacongvandi.Enabled = true;
            tabPanMain.SelectedPage = Nhapcvdi;
        }
        //==================================================================================================================

        //Nạp thể loại công văn đi
        public void NapTheloaiDi()
        {
            SqlCommand cmd = new SqlCommand();
            ConnectionDB con = new ConnectionDB(cmd);
            con.Sql = @"select matl from THELOAIVBDI where nam = " + lblNam.Text;
            DataTable dt = con.GetTable();
            List<string> s1 = new List<string>();
            
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                s1.Add(dt.Rows[i][0].ToString());                
            }
            BindingSource bSource = new BindingSource();
            bSource.DataSource = s1;
            cboMaTL1.DataSource = bSource;


            //TIỆN THỂ NẠP BỘ LỌC ĐỂ LỌC CÔNG VĂN LÚC XEM

            con.Sql = @"select tentl from THELOAIVBDI where nam = " + lblNam.Text;
            dt = con.GetTable();

            List<string> s2 = new List<string>();
            cboLocMaCvDi.DataSource = bSource;

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                s2.Add(dt.Rows[i][0].ToString());
            }
            BindingSource bSource2 = new BindingSource();
            bSource2.DataSource = s2;
            cboLocCvDi.DataSource = bSource2;
        }
        //==================================================================================================================
        //Thay đổi mã thể loại cv đi
        private void GetSoCVDi()
        {
            SqlCommand cmd = new SqlCommand();
            ConnectionDB con = new ConnectionDB(cmd);
            con.Sql = @"select tentl from THELOAIVBDI where nam = " + lblNam.Text + " and matl = '" + cboMaTL1.Text + "'";

            DataTable dt = con.GetTable();

            lblTentheloai1.Text = dt.Rows[0][0].ToString();

            con.Sql = @"select so from theloaivbdi where nam = " + lblNam.Text + " and matl = N'" + cboMaTL1.Text + "'";
            txtSoVB1.Text = con.count().ToString();
        }
        //==================================================================================================================
        private void cboMaTL1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetSoCVDi();
            if(btnNhapSuaCVDi.Text == "Nhập")
            {
                txtSoVB1.Text = (Convert.ToInt32(txtSoVB1.Text) + 1).ToString();
            }
        }
        //==================================================================================================================
        public void NapCQSoanthao()
        {
            SqlCommand cmd = new SqlCommand();
            ConnectionDB con = new ConnectionDB(cmd);
            con.Sql = @"select * from CQSOANTHAO";

            DataTable dt = con.GetTable();

            List<string> s = new List<string>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string temp = dt.Rows[i][0].ToString();
                s.Add(temp);
            }

            BindingSource bSource = new BindingSource();
            bSource.DataSource = s;
            cboCQSoanthao.DataSource = bSource;
            cboCQSoanthao.SelectedIndex = 0;
        }
        //==================================================================================================================


        //*************************************************************************************************************************************
        //*************************************************************************************************************************************
        //******************************************************    XONG CÔNG VĂN ĐI    *******************************************************
        //*************************************************************************************************************************************
        //*************************************************************************************************************************************







        //*************************************************************************************************************************************
        //*************************************************************************************************************************************
        //******************************************************     CÔNG VĂN ĐẾN    **********************************************************
        //*************************************************************************************************************************************
        //*************************************************************************************************************************************

        private void btnNhapcongvanden_Click(object sender, EventArgs e)
        {
            GetSoCVDen();
            RefreshNhapCvDen();
            panNhapsuacongvanden.Enabled = true;
            cboMaTL2.Enabled = true;
            tabPanMain.SelectedPage = Nhapcongvanden;
            btnNhapSuaCvDen.Text = "Nhập";
        }

        //==================================================================================================================
        //TRỞ VỀ CV ĐẾN
        private void btnBackToCvDen_Click(object sender, EventArgs e)
        {
            tabPanMain.SelectedPage = Congvanden;
        }
        //==================================================================================================================
        //CLICK ĐÚP VÔ 1 DÒNG CV ĐẾN
        private void CVDenTable_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex > -1)
            {
                DataGridViewRow row = CVDenTable.Rows[e.RowIndex];

                cboMaTL2.Text = row.Cells[1].Value.ToString();
                txtSoDen.Text = row.Cells[2].Value.ToString();
                txtCQbanhanh2.Text = row.Cells[3].Value.ToString();
                txtSoVB2.Text = row.Cells[4].Value.ToString();
                dateNgayden.Text = row.Cells[5].Value.ToString();
                dateNgayPH2.Text = row.Cells[6].Value.ToString();
                cboDomat2.Text = row.Cells[7].Value.ToString();
                cboDokhan2.Text = row.Cells[8].Value.ToString();
                txtTrichyeu2.Text = row.Cells[9].Value.ToString();
                txtPheduyet2.Text = row.Cells[10].Value.ToString();
                txtNguoiky2.Text = row.Cells[11].Value.ToString();
                txtSoban2.Text = row.Cells[12].Value.ToString();
                txtSoto2.Text = row.Cells[13].Value.ToString();
                txtNoinhan2.Text = row.Cells[14].Value.ToString();
                txtYkiencd2.Text = row.Cells[15].Value.ToString();
                cboHiendango.Text = row.Cells[16].Value.ToString();
                txtSohop2.Text = row.Cells[17].Value.ToString();
                txtStthop2.Text = row.Cells[18].Value.ToString();
                txtGhichu2.Text = row.Cells[19].Value.ToString();
                txtNguoinhap2.Text = row.Cells[20].Value.ToString();
                
                tabPanMain.SelectedPage = Nhapcongvanden;
                btnNhapSuaCvDen.Text = "Sửa";
                //cboMaTL2.Enabled = false;
                panNhapsuacongvanden.Enabled = false;
            }
        }

        //LÀM TRỐNG NHẬP CV ĐẾN
        private void RefreshNhapCvDen()
        {
            GetSoCVDen();
            txtSoDen.Text = (Convert.ToInt32(txtSoDen.Text) + 1).ToString();

            txtCQbanhanh2.Text = "";
            txtSoVB2.Text = "";
            dateNgayden.DateTime = DateTime.Now;
            dateNgayPH2.DateTime = DateTime.Now;
            cboDomat2.SelectedIndex = 0;
            cboDokhan2.SelectedIndex = 0;
            txtTrichyeu2.Text = "";
            txtPheduyet2.Text = "";
            txtNguoiky2.Text = "";
            txtSoban2.Text = "1";
            txtSoto2.Text = "1";
            txtNoinhan2.Text = "";
            txtYkiencd2.Text = "";
            cboHiendango.SelectedIndex = 0;
            txtSohop2.Text = "0";
            txtStthop2.Text = "0";
            txtGhichu2.Text = "";
            txtNguoinhap2.Text = "";
        }

        private void cboMaTL2_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblMaCvDen.Text = "." + cboMaTL2.Text;
            GetSoCVDen();
            if (btnNhapSuaCvDen.Text == "Nhập")
            {
                txtSoDen.Text = (Convert.ToInt32(txtSoDen.Text) + 1).ToString();
            }
        }

        //Thay đổi mã thể loại cv đi
        private void GetSoCVDen()
        {
            SqlCommand cmd = new SqlCommand();
            ConnectionDB con = new ConnectionDB(cmd);
            con.Sql = @"select tentl from THELOAIVBDEN where nam = " + lblNam.Text + " and matl = '" + cboMaTL2.Text + "'";

            DataTable dt = con.GetTable();

            lblTentheloai2.Text = dt.Rows[0][0].ToString();

            con.Sql = @"select count(*) from VANBANDEN where nam = " + lblNam.Text + " and matl = N'" + cboMaTL2.Text + "'";
            txtSoDen.Text = con.count().ToString();
        }
        
        //NÚT SỬA/NHẬP CV
        private void btnNhapSuaCvDen_Click(object sender, EventArgs e)
        {
            if (btnNhapSuaCvDen.Text == "Sửa")
            {
                panNhapsuacongvanden.Enabled = true;
                cboMaTL1.Enabled = false;
                btnNhapSuaCvDen.Text = "Xong";
            }
            else if (btnNhapSuaCvDen.Text == "Xong")
            {
                //Sửa cv đến
                DataGridViewRow row = CVDenTable.Rows[CVDenTable.CurrentCell.RowIndex];

                string nam = row.Cells[0].Value.ToString();
                string matl = row.Cells[1].Value.ToString();
                string soden = row.Cells[2].Value.ToString();

                Congvanden cv = new Congvanden();

                cv.Nam = Convert.ToInt32(lblNam.Text);
                cv.MaTl = cboMaTL2.Text;
                cv.SoDen = Convert.ToInt32(txtSoDen.Text);
                cv.CqBanhanh = txtCQbanhanh2.Text;
                cv.SoVb = txtSoVB2.Text;
                cv.NgayDen = dateNgayden.DateTime;
                cv.NgayPh = dateNgayPH2.DateTime;
                cv.DoMat = cboDomat2.Text;
                cv.DoKhan = cboDokhan2.Text;
                cv.Trichyeu = txtTrichyeu2.Text;
                cv.Pheduyet = txtPheduyet2.Text;
                cv.Nguoiky = txtNguoiky2.Text;

                string soban = txtSoban2.Text;
                if (soban == "" || soban == "0")
                    cv.SoBan = -1;
                else
                    cv.SoBan = Convert.ToInt32(soban);

                string soto = txtSoto2.Text;
                if (soto == "" || soto == "0")
                    cv.SoTo = -1;
                else
                    cv.SoTo = Convert.ToInt32(soban);

                cv.NoiNhan = txtNoinhan2.Text;
                cv.YkienCd = txtYkiencd2.Text;
                cv.HienDango = cboHiendango.Text;

                string sohop = txtSohop2.Text;
                if (sohop == "" || sohop == "0")
                    cv.SoHop = -1;
                else
                    cv.SoHop = Convert.ToInt32(sohop);

                string stthop = txtStthop2.Text;
                if (stthop == "" || stthop == "0")
                    cv.SttHop = -1;
                else
                    cv.SttHop = Convert.ToInt32(stthop);
                
                cv.Ghichu = txtGhichu2.Text;
                cv.NguoiNhap = txtNguoinhap2.Text;       

                CvDen.Cv = cv;

                string edit = ac.Name + " chỉnh sửa ngày " + DateTime.Now.ToString();

                CvDen.SuaCvden(nam, matl, soden, edit);

                CVDenTable.DataSource = CvDen.LoadCV(lblNam.Text);

                btnNhapSuaCvDen.Text = "Nhập mới";
            }
            else if (btnNhapSuaCvDen.Text == "Nhập mới")
            {
                RefreshNhapCvDen();
                cboMaTL2.Enabled = true;
                btnNhapSuaCvDen.Text = "Nhập";
            }
            else if (btnNhapSuaCvDen.Text == "Nhập")
            {
                if (txtSoVB2.Text == "" || txtTrichyeu2.Text == "")
                    return;

                cboMaTL2.Enabled = true;

                Congvanden cv = new Congvanden();


                cv.Nam = Convert.ToInt32(lblNam.Text);
                cv.MaTl = cboMaTL2.Text;
                cv.SoDen = Convert.ToInt32(txtSoDen.Text);
                cv.CqBanhanh = txtCQbanhanh2.Text;
                cv.SoVb = txtSoVB2.Text;
                cv.NgayDen = dateNgayden.DateTime;
                cv.NgayPh = dateNgayPH2.DateTime;
                cv.DoMat = cboDomat2.Text;
                cv.DoKhan = cboDokhan2.Text;
                cv.Trichyeu = txtTrichyeu2.Text;
                cv.Pheduyet = txtPheduyet2.Text;
                cv.Nguoiky = txtNguoiky2.Text;

                string soban = txtSoban2.Text;
                if (soban == "" || soban == "0")
                    cv.SoBan = -1;
                else
                    cv.SoBan = Convert.ToInt32(soban);

                string soto = txtSoto2.Text;
                if (soto == "" || soto == "0")
                    cv.SoTo = -1;
                else
                    cv.SoTo = Convert.ToInt32(soban);

                cv.NoiNhan = txtNoinhan2.Text;
                cv.YkienCd = txtYkiencd2.Text;
                cv.HienDango = cboHiendango.Text;

                string sohop = txtSohop2.Text;
                if (sohop == "" || sohop == "0")
                    cv.SoHop = -1;
                else
                    cv.SoHop = Convert.ToInt32(sohop);

                string stthop = txtStthop2.Text;
                if (stthop == "" || stthop == "0")
                    cv.SttHop = -1;
                else
                    cv.SttHop = Convert.ToInt32(stthop);

                cv.Ghichu = txtGhichu2.Text;
                cv.NguoiNhap = txtNguoinhap2.Text;
                
                CvDen.Cv = cv;

                CvDen.ThemCvden();

                CVDenTable.DataSource = CvDen.LoadCV(lblNam.Text);

                RefreshNhapCvDi();
            }
        }

        public void NapTLCVDen()
        {
            SqlCommand cmd = new SqlCommand();
            ConnectionDB con = new ConnectionDB(cmd);

            con.Sql = @"select MATL from THELOAIVBDEN";
            DataTable dt = con.GetTable();

            List<string> s1 = new List<string>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string temp = dt.Rows[i][0].ToString();
                s1.Add(temp);
            }
            BindingSource bSource = new BindingSource();
            bSource.DataSource = s1;
            cboMaTL2.DataSource = bSource;
            cboLocMaCvDen.DataSource = bSource;

            cboMaTL2.SelectedIndex = 0;
            cboLocMaCvDen.SelectedIndex = 0;

            con.Sql = @"select tenTL from THELOAIVBDEN";
            dt = con.GetTable();

            List<string> s2 = new List<string>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string temp = dt.Rows[i][0].ToString();
                s2.Add(temp);
            }
            BindingSource bSource2 = new BindingSource();
            bSource2.DataSource = s2;
            cboLocCvDen.DataSource = bSource2;
        }
        public void NapNoiLuuCvDen()
        {
            SqlCommand cmd = new SqlCommand();
            ConnectionDB con = new ConnectionDB(cmd);
            con.Sql = @"select TENCQ from CQSOANTHAO";

            DataTable dt = con.GetTable();

            List<string> s = new List<string>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string temp = dt.Rows[i][0].ToString();
                s.Add(temp);
            }

            BindingSource bSource = new BindingSource();
            bSource.DataSource = s;
            cboHiendango.DataSource = bSource;
            cboHiendango.SelectedIndex = 0;            
        }

        //*************************************************************************************************************************************
        //*************************************************************************************************************************************
        //******************************************************     XONG CÔNG VĂN ĐẾN    *******************************************************
        //*************************************************************************************************************************************
        //*************************************************************************************************************************************


        //CHỌN NĂM KHÁC THÌ SẼ LÀM VIỆC VỚI CÔNG VĂN CỦA NĂM ĐÓ THÔI
        private void lblNam_TextChanged(object sender, EventArgs e)
        {
            NapTheloaiDi();
            NapTLCVDen();

        }


    }
}