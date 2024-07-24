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
    public partial class StudentManager_ : Form
    {
        public StudentManager_()
        {
            InitializeComponent();
        }
        DBconnect db = new DBconnect();
        void loadTable()
        {
            dgvSinhVien.DataSource = db.getDataTable("Select * from SINHVIEN");
        }
        void BindingData(DataTable dt)
        {
            txtMaSV.DataBindings.Clear();
            txtTenSV.DataBindings.Clear();
            txtTenSV.DataBindings.Add("Text", dt, "TENSV");
            txtMaSV.DataBindings.Add("Text", dt, "MASV");
           
        }
        private void StudentManager__Load(object sender, EventArgs e)
        {
            loadTable();
            loadLopCombo();
            DataTable dt = (DataTable) dgvSinhVien.DataSource;
            BindingData(dt);
            
        }
        void loadLopCombo()
        {
            DataTable dt = db.getDataTable("Select * from LOPHOCPHAN");
            cboLop.DataSource = dt;
            cboLop.DisplayMember = "TENLOP";
            cboLop.ValueMember = "MALOP";
            
        }
        private void button2_Click(object sender, EventArgs e)
        {
            string date = dtpNgaySinh.Value.ToShortDateString();
            int kt = db.getNonQuery("INSERT INTO SINHVIEN(MASV,TENSV,NGAYSINH,MALOP) VALUES (N'" + txtMaSV.Text + "', N'" + txtTenSV.Text + "', '"+date  + "','"+cboLop.SelectedValue.ToString() +"')");
            if (kt != 0) MessageBox.Show("Thêm thành công ");
            else MessageBox.Show("Thêm thất bại");
            loadTable();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            int kt = db.getNonQuery("Delete from SINHVIEN where MASV='" + txtMaSV.Text + "'");
            if (kt != 0) MessageBox.Show("Xóa thành công");
            else MessageBox.Show("Xóa thất bại");
            loadTable();
        }

        private void button4_Click(object sender, EventArgs e)
        {
           string date = dtpNgaySinh.Value.ToShortDateString();
            int kt = db.getNonQuery("UPDATE SINHVIEN SET TENSV =N'"+txtTenSV.Text+"',NGAYSINH='"+date+"',MALOP='"+cboLop.SelectedValue.ToString()+"' WHERE MASV='"+txtMaSV.Text+"'");
            if (kt != 0) MessageBox.Show("Cập nhật thành công");
            else MessageBox.Show("Cập nhật thất bại");
            loadTable();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)dgvSinhVien.DataSource;
            ImportExcel f = new ImportExcel(dt, "SINHVIEN");
            f.ShowDialog();
        }
    }
}
