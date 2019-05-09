using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyCongVan
{
    class CongvandenAdapter
    {
        Congvanden cv = new Congvanden();
        internal Congvanden Cv { get => cv; set => cv = value; }

        private SqlCommand cmd;
        private ConnectionDB con;

        public CongvandenAdapter() { }

        public DataTable LoadCV(string nam)
        {
            cmd = new SqlCommand();
            con = new ConnectionDB(cmd);
            con.Sql = @"select * from VANBANDEN where nam = " + nam;
            return con.GetTable();
        }

        public void ThemCvden()
        {
            int d = cv.NgayPh.Day;
            int m = cv.NgayPh.Month;
            int y = cv.NgayPh.Year;

            string dayph = y.ToString() + "-" + m.ToString() + "-" + d.ToString();

            d = cv.NgayDen.Day;
            m = cv.NgayDen.Month;
            y = cv.NgayDen.Year;

            string dayden = y.ToString() + "-" + m.ToString() + "-" + d.ToString();

            string s1 = cv.SoBan.ToString(), s2 = cv.SoTo.ToString(), s3 = cv.SoHop.ToString(), s4 = cv.SttHop.ToString();

            if (s1 == "-1")
                s1 = "null";

            if (s2 == "-1")
                s2 = "null";

            if (s3 == "-1")
                s3 = "null";

            if (s4 == "-1")
                s4 = "null";

            cmd = new SqlCommand();
            con = new ConnectionDB(cmd);

            con.Sql = @"insert into VANBANDEN values (" + cv.Nam + ",N'" + cv.MaTl + "'," + cv.SoDen.ToString() + ",N'" + cv.CqBanhanh + "',N'" + cv.SoVb + "','" + dayden + "','" + dayph + "',N'" + cv.DoMat + "',N'" + cv.DoKhan + "',N'" + cv.Trichyeu + "',N'" + cv.Pheduyet + "',N'" + cv.Nguoiky + "'," + s1 + "," + s2 + ",N'" + cv.NoiNhan + "',N'" + cv.YkienCd + "',N'" + cv.HienDango + "'," + s3 + "," + s4 + ",N'" + cv.Ghichu + "',N'" + cv.NguoiNhap + "')";

            con.ExecuteReader();
        }

        public void SuaCvden(string nam, string matl, string soden, string edit)
        {
            cmd = new SqlCommand();
            con = new ConnectionDB(cmd);

            string s1 = cv.SoBan.ToString(), s2 = cv.SoTo.ToString(), s3 = cv.SoHop.ToString(), s4 = cv.SttHop.ToString();

            if (s1 == "-1")
                s1 = "null";

            if (s2 == "-1")
                s2 = "null";

            if (s3 == "-1")
                s3 = "null";

            if (s4 == "-1")
                s4 = "null";

            int d = cv.NgayPh.Day;
            int m = cv.NgayPh.Month;
            int y = cv.NgayPh.Year;

            string dayph = y.ToString() + "-" + m.ToString() + "-" + d.ToString();

            d = cv.NgayDen.Day;
            m = cv.NgayDen.Month;
            y = cv.NgayDen.Year;

            string dayden = y.ToString() + "-" + m.ToString() + "-" + d.ToString();

            string ss1 = "update VANBANDEN set Cqbanhanh = N'" + cv.CqBanhanh + "', sovb = N'" + cv.SoVb + "', Ngayden = '" + dayden + "', ngayph = '" + dayph + "',domat = N'" + cv.DoMat + "', dokhan = N'" + cv.DoKhan + "', trichyeu = N'" + cv.Trichyeu + "', pheduyet = N'" + cv.Pheduyet + "', nguoiky = N'" + cv.Nguoiky + "', soban = " + s1 + ", soto = " + s2 + ", noinhan = N'" + cv.NoiNhan + "', ykiencd = N'" + cv.YkienCd + "', hiendango = N'" + cv.HienDango + "', sohop = " + s3 + ", stthop = " + s4 + ", ghichu = N'" + cv.Ghichu + "', nguoinhap = N'" + cv.NguoiNhap + "' + char(10) + N'" + edit + "'";
            string ss2 = " where nam = " + nam + " and matl = N'" + matl + "' and soden = " + soden;

            con.Sql = ss1 + ss2;

            con.ExecuteReader();
        }

        //Trả về danh sách văn bản chưa xử lý   -     chưa phê duyệt
        public DataTable LoadChuaXuly(DataTable da)
        {
            DataTable dt = new DataTable();
            //...
            return dt;
        }
    }
}
