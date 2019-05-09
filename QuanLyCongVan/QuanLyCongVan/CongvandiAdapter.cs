using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyCongVan
{
    class CongvandiAdapter
    {
        private Congvandi cv;
        internal Congvandi Cv { get => cv; set => cv = value; }
        private SqlCommand cmd;
        private ConnectionDB con;

        public CongvandiAdapter() { }
        public void ThemCvdi()
        {
            int d = cv.NgayPh.Day;
            int m = cv.NgayPh.Month;
            int y = cv.NgayPh.Year;

            string day = y.ToString() + "-" + m.ToString() + "-" + d.ToString();

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


            con.Sql = @"insert into VANBANDI values (" + cv.Nam.ToString() + ",N'" + cv.MaTl + "'," + cv.SoVb.ToString() + ",N'" + cv.MaVb + "','" + day + "',N'" + cv.DoMat + "',N'" + cv.DoKhan + "',N'" + cv.Trichyeu + "',N'" + cv.Pheduyet + "',N'" + cv.Nguoiky + "'," + s1 + "," + s2 + ",N'" + cv.NoiNhan + "',N'" + cv.CqSoanthao + "',N'" + cv.YkienCd + "'," + s3 + "," + s4 + ",N'" + cv.Ghichu + "',N'" + cv.NguoiNhap + "')";

            con.ExecuteReader();
        }

        public void SuaCvdi(string nam, string matl, string sovb, string edit)
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

            string day = y.ToString() + "-" + m.ToString() + "-" + d.ToString();

            string ss1 = "update VANBANDI set mavb = N'" + cv.MaVb + "', ngayph = '" + day + "', domat = N'" + cv.DoMat + "', dokhan = N'" + cv.DoKhan + "', trichyeu = N'" + cv.Trichyeu + "', pheduyet = N'" + cv.Pheduyet + "', nguoiky = N'" + cv.Nguoiky + "', soban = " + s1 + ", soto = " + s2 + ", noinhan = N'" + cv.NoiNhan + "', cqsoanthao = N'" + cv.CqSoanthao + "', ykiencd = N'" + cv.YkienCd + "', sohop = " + s3 + ", stthop = " + s4 + ", ghichu = N'" + cv.Ghichu + "', nguoinhap = N'" + cv.NguoiNhap + "' + char(10) + N'" + edit + "'";
            string ss2 = " where nam = " + nam + " and matl = N'" + matl + "' and sovb = " + sovb;

            con.Sql = ss1 + ss2;

            con.ExecuteReader();
        }

        public DataTable LoadCV(string nam)
        {
            cmd = new SqlCommand();
            con = new ConnectionDB(cmd);
            con.Sql = @"select * from VANBANDI where nam = " + nam;
            return con.GetTable();
        }


    }
}
