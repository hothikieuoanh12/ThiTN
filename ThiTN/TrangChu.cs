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
    public partial class TrangChu : Form
    {
       
        DBconnect db = new DBconnect();
        DataTable dt;
        public TrangChu()
        {
            
            InitializeComponent();
            
        }

        private void btnCauHoi_Click(object sender, EventArgs e)
        {
        
            OpenChildForm.openForm(new QuestionManager(),pnLoad);
        }

        private void btnQuanLiHocSinh_Click(object sender, EventArgs e)
        {
           
            OpenChildForm.openForm(new StudentManager_(), pnLoad);
        }

        private void btnQuanLiDeThi_Click(object sender, EventArgs e)
        {
            OpenChildForm.openForm(new DeThi(), pnLoad);
        }

        private void btnQuanLiMonHoc_Click(object sender, EventArgs e)
        {
            OpenChildForm.openForm(new SubjectManager(), pnLoad);
        }

        private void TrangChu_Load(object sender, EventArgs e)
        {
         
           
            if(UserInfo.VaiTro=="Giáo viên")
            {
                dt = db.getDataTable("select * from GIAOVIEN WHERE MAGV='" + UserInfo.ID + "'");
                pnGVControls.Visible = true;
                pnSVControls.Visible = false;

            }

            if (UserInfo.VaiTro == "Sinh viên")
            {
                dt = db.getDataTable("select * from SINHVIEN WHERE MASV='" + UserInfo.ID + "'");
                DataRow dr = dt.Rows[0];
                lblUsername.Text = dr["TENSV"].ToString();
                pnGVControls.Visible = false;
                pnSVControls.Visible = true;
               
            }
           
        }

        private void btnLichThi_Click(object sender, EventArgs e)
        {
            OpenChildForm.openForm(new LichThi(), pnLoad);
        }

        private void btnKetQua_Click(object sender, EventArgs e)
        {
            OpenChildForm.openForm(new KetQuaThi(),pnLoad);
        }
    }
}
