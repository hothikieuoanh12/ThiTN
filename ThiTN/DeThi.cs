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
    public partial class DeThi : Form
    {
        public DeThi()
        {
            InitializeComponent();
          
        }
        string ID;
        DBconnect db = new DBconnect();

        void loadDe()
        {
            dgvDeThi.DataSource = db.getDataTable("SELECT * FROM DE");
        }
        void loadcboMon()
        {
            DataTable dt = db.getDataTable("SELECT * FROM MONHOC");
            cboMonThi.DataSource = dt;
            cboMonThi.DisplayMember = "TENMH";
            cboMonThi.ValueMember = "MAMH";
        }
        private void DeThi_Load(object sender, EventArgs e)
        {
            loadDe();
            loadcboMon();
            DataTable dt = (DataTable)dgvDeThi.DataSource;
            BindingData(dt);
            
        }
        
        void BindingData(DataTable dt)
        {
            txtMaDe.DataBindings.Add("Text", dt, "MADE");
            txtThoiGian.DataBindings.Add("Text", dt, "THOIGIAN");
            txtTenDe.DataBindings.Add("Text", dt, "TENDETHI");
            txtTB.DataBindings.Add("Text", dt, "SOCAUTB");
            txtDe.DataBindings.Add("Text", dt, "SOCAUDE");
            txtKho.DataBindings.Add("Text", dt, "SOCAUKHO");
            cboMonThi.DataBindings.Add("Text", dt, "MAMH");

        }
        void unBind()
        {
            txtMaDe.DataBindings.Clear();
            txtGio.DataBindings.Clear();
            txtTenDe.DataBindings.Clear();
            txtThoiGian.DataBindings.Clear();
            txtDe.DataBindings.Clear();
            txtKho.DataBindings.Clear();   
            txtTB.DataBindings.Clear();
            cboMonThi.DataBindings.Clear();
        }
        private void btnThem_Click(object sender, EventArgs e)
        {
            unBind();
          
            DateTime selectedDate = dtpNgay.Value;


            int hour;
            int minute;
            DateTime NgayThi = DateTime.Now;

            if (int.TryParse(txtGio.Text, out hour) && int.TryParse(txtPhut.Text, out minute))
            {
               
                    NgayThi = new DateTime(
                    selectedDate.Year,
                    selectedDate.Month,
                    selectedDate.Day,
                    hour,
                    minute,
                    0);
                
                
            }
            else
            {
                MessageBox.Show("Giờ và phút không hợp lệ.");
                return;
            }
            int soCauDe = int.Parse(txtDe.Text);
            int soCauTB = int.Parse(txtTB.Text);
            int soCauKho = int.Parse(txtKho.Text);
            int thoiGian = int.Parse(txtThoiGian.Text);
            string sqlQuery = "INSERT INTO DE (MADE, TENDETHI, THOIGIAN, THOIGIANBATDAU, SOCAUDE, SOCAUTB, SOCAUKHO, MAMH,MAGV) VALUES ('" + txtMaDe.Text + "', N'" + txtTenDe.Text + "', " + thoiGian + ", '" + NgayThi.ToString() + "', " + soCauDe + ", " + soCauTB + ", " + soCauKho + ", '" + cboMonThi.SelectedValue.ToString() +"','"+ UserInfo.ID +"')";
            int kt = db.getNonQuery(sqlQuery);
            if (kt != 0)
            {
                MessageBox.Show("Thêm thành công");
                btnThemDoiTuong.Enabled = true;
            }
            else MessageBox.Show("Thêm thất bại");
            loadDe();
            DataTable dt = (DataTable)dgvDeThi.DataSource;
            BindingData(dt);
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            unBind();
            try
            {
                int kt = db.getNonQuery("DELETE FROM DE WHERE MADE='" + txtMaDe.Text + "'");
                if (kt != 0) MessageBox.Show("Xóa thành công");
            }
            catch {
                MessageBox.Show("Không thể xóa ! Đề này đang được sử dụng hoặc đã có kết quả");
            }
            loadDe();
            DataTable dt = (DataTable)dgvDeThi.DataSource;
            BindingData(dt);
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            DateTime selectedDate = dtpNgay.Value;

            int hour;
            int minute;
            DateTime NgayThi = DateTime.Now;

            if (int.TryParse(txtGio.Text, out hour) && int.TryParse(txtPhut.Text, out minute))
            {

                NgayThi = new DateTime(
                selectedDate.Year,
                selectedDate.Month,
                selectedDate.Day,
                hour,
                minute,
                0);
                MessageBox.Show(NgayThi.ToString());

            }
            else
            {
                MessageBox.Show("Giờ và phút không hợp lệ.");
                return;
            }
            int soCauDe = int.Parse(txtDe.Text);
            int soCauTB = int.Parse(txtTB.Text);
            int soCauKho = int.Parse(txtKho.Text);
            string sqlQuery = "UPDATE DE SET TENDETHI = N'" + txtTenDe.Text + "', THOIGIAN = " + txtThoiGian.Text + ", " + "THOIGIANBATDAU = '" + NgayThi.ToString("yyyy-MM-dd HH:mm:ss") + "', SOCAUDE = " + soCauDe + ", " + "SOCAUTB = " + soCauTB + ", SOCAUKHO = " + soCauKho + ", MAMH = '" + cboMonThi.SelectedValue.ToString() + "' WHERE MADE = '" + txtMaDe.Text + "'";

            int kt = db.getNonQuery(sqlQuery);
            if (kt!= 0) MessageBox.Show("Cap nhat thanh cong");
            else MessageBox.Show("Cap nhat that bai");
            loadDe();
        }

     

 
        private void btnThemDoiTuong_Click(object sender, EventArgs e)
        {
            DanhSachThi f = new DanhSachThi(txtMaDe.Text,cboMonThi.SelectedValue.ToString());
            f.Show();
        }

     
        string TaoMaDe()
        {
            
            string md ="DT";
          
          
            string ht = DateTime.Now.ToString("ddMMyy").Trim();
            string mh = cboMonThi.SelectedValue.ToString().Trim();
            md += mh + ht;
            DataTable dt = db.getDataTable("select top 1 * from DE where MADE like '" + md + "%' order by MADE desc");
            if(dt.Rows.Count>0)
            {
                DataRow dr = dt.Rows[0];
                string made =dr["MADE"].ToString();
                int so = int.Parse(made.Substring(made.Length - 1)) +1;
                md += so;
            }
            else
            {
                md += "1";
            }
            return md;
        }

        private void btnTaoMa_Click(object sender, EventArgs e)
        {
           
            txtMaDe.Text = TaoMaDe();
            btnThem.Enabled = true;
        }

        private void cboMonThi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboMonThi.SelectedItem != null) btnTaoMa.Enabled = true;
            else btnTaoMa.Enabled = false;
        }

     

    
      

      
    }
}
