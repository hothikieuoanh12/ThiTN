using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ThiTN
{
    public partial class KetQuaThi : Form
    {
        public KetQuaThi()
        {
            InitializeComponent();
        }
        DBconnect db = new DBconnect();

        private void KetQuaThi_Load(object sender, EventArgs e)
        {
            if (UserInfo.VaiTro == "Giáo viên") dgvDiem.DataSource = db.getDataTable("select DE.MADE,DE.TENDETHI,MONHOC.TENMH,SINHVIEN.MASV,SINHVIEN.TENSV,DIEM from ketqua,MONHOC,SINHVIEN,DE WHERE DE.MADE = KETQUA.MADE AND SINHVIEN.MASV =KETQUA.MASV AND KETQUA.MAMH = MONHOC.MAMH");
            else dgvDiem.DataSource = db.getDataTable("select DE.MADE,DE.TENDETHI,MONHOC.TENMH,SINHVIEN.MASV,SINHVIEN.TENSV,DIEM from ketqua,MONHOC,SINHVIEN,DE WHERE DE.MADE = KETQUA.MADE AND SINHVIEN.MASV =KETQUA.MASV AND KETQUA.MAMH = MONHOC.MAMH AND SINHVIEN.MASV='" + UserInfo.ID + "'");
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            if (UserInfo.VaiTro == "Giảng viên") 
            dgvDiem.DataSource = db.getDataTable("select DE.MADE,DE.TENDETHI,MONHOC.TENMH,SINHVIEN.MASV,SINHVIEN.TENSV,DIEM from ketqua,MONHOC,SINHVIEN,DE WHERE DE.MADE = KETQUA.MADE AND SINHVIEN.MASV =KETQUA.MASV AND KETQUA.MAMH = MONHOC.MAMH AND DE.MADE LIKE '" + txtMaDe.Text+"%'");
            else dgvDiem.DataSource = db.getDataTable("select DE.MADE,DE.TENDETHI,MONHOC.TENMH,SINHVIEN.MASV,SINHVIEN.TENSV,DIEM from ketqua,MONHOC,SINHVIEN,DE WHERE DE.MADE = KETQUA.MADE AND SINHVIEN.MASV =KETQUA.MASV AND KETQUA.MAMH = MONHOC.MAMH AND SINHVIEN.MASV='" + UserInfo.ID + "' AND DE.MADE LIKE '" + txtMaDe.Text + "%'");
        }
    }
}
