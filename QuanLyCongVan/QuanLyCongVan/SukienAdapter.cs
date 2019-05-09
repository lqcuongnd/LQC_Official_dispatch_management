using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyCongVan
{
    class SukienAdapter
    {
        Sukien ev = new Sukien();

        private SqlCommand cmd;
        private ConnectionDB con;

        internal Sukien Ev { get => ev; set => ev = value; }

        public DataTable LoadSukien()
        {
            DataTable dt = new DataTable();
            //Load danh sách sự kiện từ SQL vào DAtaGridview
            return dt;
        }
        public void ThemSukien()
        {
            //Thêm sự kiện từ ev vào SQL
        }
        public void SuaSukien(string code)
        {
            //Lấy sự kiện từ biến ev gán vô dòng có mã = code
        }
        public void XoaSukien(string code)
        {
            //xóa sự kiện có mã = code
        }
    }
}
