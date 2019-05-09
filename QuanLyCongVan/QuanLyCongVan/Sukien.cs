using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyCongVan
{
    class Sukien
    {
        private int code;
        private DateTime thoigian;
        private string ten;
        private string diadiem;
        private string nguoidu;
        string phuongtien;
        public Sukien() { }
        public Sukien(int code, DateTime thoigian, string ten, string diadiem, string nguoidu, string phuongtien)
        {
            this.code = code;
            this.thoigian = thoigian;
            this.ten = ten;
            this.diadiem = diadiem;
            this.nguoidu = nguoidu;
            this.phuongtien = phuongtien;
        }

        public int Code { get => code; set => code = value; }
        public DateTime Thoigian { get => thoigian; set => thoigian = value; }
        public string Ten { get => ten; set => ten = value; }
        public string Diadiem { get => diadiem; set => diadiem = value; }
        public string Nguoidu { get => nguoidu; set => nguoidu = value; }
        public string Phuongtien { get => phuongtien; set => phuongtien = value; }
    }
}
