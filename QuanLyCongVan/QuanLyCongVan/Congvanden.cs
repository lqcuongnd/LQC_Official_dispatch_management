using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyCongVan
{
    class Congvanden
    {
        private int nam;
        private string maTl;
        private int soDen;
        private string cqBanhanh;
        private string soVb;
        private DateTime ngayDen;
        private DateTime ngayPh;
        private string doMat;
        private string doKhan;
        private string trichyeu;
        private string pheduyet;
        private string nguoiky;
        private int soBan;
        private int soTo;
        private string noiNhan;
        private string ykienCd;
        private string hienDango;
        private int soHop;
        private int sttHop;
        private string ghichu;
        private string nguoiNhap;
        //GET SET
        public int Nam { get => nam; set => nam = value; }
        public string MaTl { get => maTl; set => maTl = value; }
        public int SoDen { get => soDen; set => soDen = value; }
        public string CqBanhanh { get => cqBanhanh; set => cqBanhanh = value; }
        public string SoVb { get => soVb; set => soVb = value; }
        public DateTime NgayDen { get => ngayDen; set => ngayDen = value; }
        public DateTime NgayPh { get => ngayPh; set => ngayPh = value; }
        public string DoMat { get => doMat; set => doMat = value; }
        public string DoKhan { get => doKhan; set => doKhan = value; }
        public string Trichyeu { get => trichyeu; set => trichyeu = value; }
        public string Pheduyet { get => pheduyet; set => pheduyet = value; }
        public string Nguoiky { get => nguoiky; set => nguoiky = value; }
        public int SoBan { get => soBan; set => soBan = value; }
        public int SoTo { get => soTo; set => soTo = value; }
        public string NoiNhan { get => noiNhan; set => noiNhan = value; }
        public string YkienCd { get => ykienCd; set => ykienCd = value; }
        public string HienDango { get => hienDango; set => hienDango = value; }
        public int SoHop { get => soHop; set => soHop = value; }
        public int SttHop { get => sttHop; set => sttHop = value; }
        public string Ghichu { get => ghichu; set => ghichu = value; }
        public string NguoiNhap { get => nguoiNhap; set => nguoiNhap = value; }
        public Congvanden() { }
        public Congvanden(int nam, string maTl, int soDen, string cqBanhanh, string soVb, DateTime ngayDen, DateTime ngayPh, string doMat, string doKhan, string trichyeu, string pheduyet, string nguoiky, int soBan, int soTo, string noiNhan, string ykienCd, string hienDango, int soHop, int sttHop, string ghichu, string nguoiNhap)
        {
            Nam = nam;
            MaTl = maTl;
            SoDen = soDen;
            CqBanhanh = cqBanhanh;
            SoVb = soVb;
            NgayDen = ngayDen;
            NgayPh = ngayPh;
            DoMat = doMat;
            DoKhan = doKhan;
            Trichyeu = trichyeu;
            Pheduyet = pheduyet;
            Nguoiky = nguoiky;
            SoBan = soBan;
            SoTo = soTo;
            NoiNhan = noiNhan;
            YkienCd = ykienCd;
            HienDango = hienDango;
            SoHop = soHop;
            SttHop = sttHop;
            Ghichu = ghichu;
            NguoiNhap = nguoiNhap;
        }
    }
}