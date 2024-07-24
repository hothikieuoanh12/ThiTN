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
    public partial class LichThi : Form
    {
        public LichThi()
        {
            InitializeComponent();
        }
        DBconnect db = new DBconnect();
        string MADE;
        DateTime TGBD;
        private void LichThi_Load(object sender, EventArgs e)
        {
            DataTable dt = db.getDataTable("SELECT * FROM LOPHOCPHAN WHERE MASV ='" + UserInfo.ID + "' AND MADE IS NOT NULL");
           
            foreach( DataRow dr in dt.Rows)
            {
                MADE = dr["MADE"].ToString();
                DataTable dtDe = db.getDataTable("SELECT THOIGIANBATDAU from DE where MADE='" + MADE + "'");
                DataRow drNgay = dtDe.Rows[0];
                DateTime NgayThi = (DateTime)drNgay["THOIGIANBATDAU"];
                if(DateTime.Now.Date <=NgayThi.Date )  TaoLichThi(MADE);
            }
        }

        Panel childPanel;
        private void TaoLichThi(string MADE)
        {
            DataTable dt = db.getDataTable("select TENDETHI,TENMH,THOIGIAN,THOIGIANBATDAU from de,MONHOC where de.MAMH = MONHOC.MAMH AND MADE='" +MADE+"'");
            DataRow dr = dt.Rows[0];
            
            childPanel = new Panel();
            TGBD =(DateTime) dr["THOIGIANBATDAU"];
         
            childPanel.BackColor = System.Drawing.Color.LightBlue;

          
          

     
            childPanel.Height = 120;

      
            Label TenKiThi = new Label();
            TenKiThi.Dock = DockStyle.Top;
            Label MonThi = new Label();
            MonThi.Dock = DockStyle.Top; 
            Label ThoiGianLam = new Label();
            ThoiGianLam.Dock = DockStyle.Top; 
            Label ThoiGianThi = new Label();
            ThoiGianThi.Dock = DockStyle.Top; ;
            TenKiThi.Text = "Tên kì thi: " + dr["TENDETHI"];
            TenKiThi.Dock = DockStyle.Top; 
            MonThi.Text = "Môn thi: "+ dr["TENMH"];
            MonThi.Dock = DockStyle.Top;
            ThoiGianLam.Text = "Thời gian làm: " + dr["THOIGIAN"].ToString();
            ThoiGianThi.Dock = DockStyle.Top;
            ThoiGianThi.Text = "Thời gian thi: " + dr["THOIGIANBATDAU"].ToString();
            ThoiGianThi.Dock = DockStyle.Top;
       
          
         
            childPanel.Controls.Add(ThoiGianThi);
            childPanel.Controls.Add(ThoiGianLam);
            childPanel.Controls.Add(MonThi);
            childPanel.Controls.Add(TenKiThi);
         

            Button btnVaoThi = new Button();
            btnVaoThi.Text = "Thi";
            btnVaoThi.Dock = DockStyle.Bottom;
            childPanel.Controls.Add(btnVaoThi);
            btnVaoThi.BackColor = Color.Blue;
            btnVaoThi.ForeColor = Color.White;
            btnVaoThi.Click +=buttonThi_Click;
            pnLichThi.Controls.Add(childPanel);

        }
        void buttonThi_Click(object sender, EventArgs e)
        {
            DataTable dt = db.getDataTable("select * from KETQUA where MADE= '" + MADE +"' AND MASV='" +UserInfo.ID +"'");
            if(dt.Rows.Count > 0 )
            {
                MessageBox.Show("Bạn đã hoàn thành đề thi này");
                return;
            }

            if (DateTime.Now >= TGBD)
            {
                Exam f = new Exam(UserInfo.ID, MADE);
                f.ShowDialog();
                
            }
            else
            {

                TimeSpan TGConLai = TGBD - DateTime.Now;
                MessageBox.Show("Chưa tới thời gian thi ! Còn " +TGConLai.Days +" Ngày " +  TGConLai.Hours +" Giờ " + TGConLai.Minutes +" Phút cho tới giờ thời gian thi");
               
            }
        }
    }
}
