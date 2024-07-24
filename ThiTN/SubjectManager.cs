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
    public partial class SubjectManager : Form
    {
        public SubjectManager()
        {
            InitializeComponent();
        }
        DBconnect db = new DBconnect();
        void hienthidsMonHoc()
        {
            string sql = "select*from MONHOC";
            DataTable dt = db.getDataTable(sql);
            DataColumn[] key = new DataColumn[1];
            key[0] = dt.Columns[0];
            dt.PrimaryKey = key;
            dgvMonHoc.DataSource = dt;

        }
        void LKDL(DataTable pDT)
        {
            txtMaMH.DataBindings.Clear();
            txtTenMH.DataBindings.Clear();
            txtMaMH.DataBindings.Add("Text", pDT, "MaMH");
            txtTenMH.DataBindings.Add("Text", pDT, "TENMH");
        }
        private void SubjectManager_Load(object sender, EventArgs e)
        {
            hienthidsMonHoc();
            DataTable dt = (DataTable)dgvMonHoc.DataSource;
            LKDL(dt);
        }

     

        private void btnXoa_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)dgvMonHoc.DataSource;
            DataRow dr = dt.Rows.Find(txtMaMH.Text);
            if (dr != null)
            {
                dr.Delete();
                string sql = "select * from MONHOC";
                int k = db.updateDataTable(dt, sql);
                if (k != 0)
                    MessageBox.Show("Xóa thành công");
                else
                    MessageBox.Show("Không thành công");


            }
            else
                MessageBox.Show("Không tìm thấy");
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)dgvMonHoc.DataSource;
            DataRow dr = dt.Rows.Find(txtMaMH.Text);
            if (dr != null)
            {
                dr["TENMH"] = txtTenMH.Text;
                string sql = "select * from MONHOC";
                int k = db.updateDataTable(dt, sql);
                if (k != 0)
                    MessageBox.Show("Sửa thành công");
                else
                    MessageBox.Show("Không thành công");
            }
            else
                MessageBox.Show("Lỗi");
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)dgvMonHoc.DataSource;
            DataRow dr = dt.NewRow();
            dr["MAMH"] = txtMaMH.Text;
            dr["TENMH"] = txtTenMH.Text;
            dt.Rows.Add(dr);
            string sql = "select*from MONHOC";
            int k = db.updateDataTable(dt, sql);
            if (k != 0)
                MessageBox.Show("Thêm thành công");
            else
                MessageBox.Show("Không thành công");
        }
    }
}
