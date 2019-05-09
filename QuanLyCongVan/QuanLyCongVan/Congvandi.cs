using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyCongVan
{
    class Congvandi
    {
        private int nam;
        private string maTl;
        private int soVb;
        private string maVb;
        private DateTime ngayPh;
        private string doMat;
        private string doKhan;
        private string trichyeu;
        private string pheduyet;
        private string nguoiky;
        private int soBan;
        private int soTo;
        private string noiNhan;
        private string cqSoanthao;
        private string ykienCd;
        private int soHop;
        private int sttHop;
        private string ghichu;
        private string nguoiNhap;

        public int Nam { get => nam; set => nam = value; }
        public string MaTl { get => maTl; set => maTl = value; }
        public int SoVb { get => soVb; set => soVb = value; }
        public string MaVb { get => maVb; set => maVb = value; }
        public DateTime NgayPh { get => ngayPh; set => ngayPh = value; }
        public string DoMat { get => doMat; set => doMat = value; }
        public string DoKhan { get => doKhan; set => doKhan = value; }
        public string Trichyeu { get => trichyeu; set => trichyeu = value; }
        public string Pheduyet { get => pheduyet; set => pheduyet = value; }
        public string Nguoiky { get => nguoiky; set => nguoiky = value; }
        public int SoBan { get => soBan; set => soBan = value; }
        public int SoTo { get => soTo; set => soTo = value; }
        public string NoiNhan { get => noiNhan; set => noiNhan = value; }
        public string CqSoanthao { get => cqSoanthao; set => cqSoanthao = value; }
        public string YkienCd { get => ykienCd; set => ykienCd = value; }
        public int SoHop { get => soHop; set => soHop = value; }
        public int SttHop { get => sttHop; set => sttHop = value; }
        public string Ghichu { get => ghichu; set => ghichu = value; }
        public string NguoiNhap { get => nguoiNhap; set => nguoiNhap = value; }

        public Congvandi() { }
        public Congvandi(int nam, string maTl, int soVb, string maVb, DateTime ngayPh, string doMat, string doKhan, string trichyeu, string pheduyet, string nguoiky, int soBan, int soTo, string noiNhan, string cqSoanthao, string ykienCd, int soHop, int sttHop, string ghichu, string nguoiNhap)
        {
            Nam = nam;
            MaTl = maTl;
            SoVb = soVb;
            MaVb = maVb;
            NgayPh = ngayPh;
            DoMat = doMat;
            DoKhan = doKhan;
            Trichyeu = trichyeu;
            Pheduyet = pheduyet;
            Nguoiky = nguoiky;
            SoBan = soBan;
            SoTo = soTo;
            NoiNhan = noiNhan;
            CqSoanthao = cqSoanthao;
            YkienCd = ykienCd;
            SoHop = soHop;
            SttHop = sttHop;
            Ghichu = ghichu;
            NguoiNhap = nguoiNhap;
        }
    }
}
