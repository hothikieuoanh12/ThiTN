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
    public partial class DangNhap : Form
    {
        public DangNhap()
        {
            InitializeComponent();
        }
       
        string id;
        DBconnect db = new DBconnect();

        private void frmDangNhap_Load(object sender, EventArgs e)
        {
            string[] vaitro = { "Sinh viên", "Giáo viên" };
            foreach (string s in vaitro)
            {
                cboVaiTro.Items.Add(s);
            }
        }

        private void btnDangNhap_Click(object sender, EventArgs e)
        {
              DataTable dt;
            
                  if (cboVaiTro.Text == "Sinh viên")
                  {

                      dt = db.getDataTable("select * from SINHVIEN where MASV='" + txtTenDangNhap.Text + "' AND MATKHAU = '" + txtPassword.Text + "'");
                      DataRow dr = dt.Rows[0];
                      id = dr["MASV"].ToString();
                  }
                  else
                  {
                      dt = db.getDataTable("select * from GIAOVIEN where MAGV='" + txtTenDangNhap.Text + "' AND MATKHAU = '" + txtPassword.Text + "'");
                DataRow dr = dt.Rows[0];
                id = dr["MAGV"].ToString();
                MessageBox.Show(id);
            }


                  if (dt.Rows.Count > 0 && dt != null)
                  {
                      UserInfo.ID = id;
                      UserInfo.VaiTro = cboVaiTro.Text;
                      TrangChu f = new TrangChu();

                      f.ShowDialog();
                    
                  }
              
          
        }
       
    }
}
