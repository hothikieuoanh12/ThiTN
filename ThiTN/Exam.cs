using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Text.RegularExpressions;
namespace ThiTN
{
    public partial class Exam : Form
    {
      
        int tongCauHoi;
      
        string MaDe;
        string MaSV;
        string MaMH;
        DBconnect db = new DBconnect();
        int ThoiGian;
         DataTable getDataDeThi()
        {
         
            DataTable dtDeThi = db.getDataTable("Select * from DE,MONHOC where MADE='"+MaDe +"' AND DE.MAMH = MONHOC.MAMH");
            DataRow dr = dtDeThi.Rows[0];
            int SoCauDe = (int)(dr["SOCAUDE"]);
            int SoCauTB = (int)(dr["SOCAUTB"]);
            int SoCauKho = (int)(dr["SOCAUKHO"]);
            MaMH = dr["MAMH"].ToString();
            tongCauHoi = SoCauDe + SoCauTB + SoCauKho;
              CauHoiNgauNhien("N'Dễ'", SoCauDe,MaMH);
            CauHoiNgauNhien("N'Trung bình'", SoCauTB, MaMH);
            CauHoiNgauNhien("N'Khó'", SoCauKho, MaMH);


            ThoiGian = int.Parse(dr["ThoiGian"].ToString()) * 60 ;
           
            
            lblMonThi.Text = dr["TENMH"].ToString();
            loadQuestion();
            loadList();
            return dtDeThi;
        }

        DataTable getDataSinhVien()
        {
            DataTable dtSinhVien = db.getDataTable("Select * from SINHVIEN where MASV = '" + MaSV + "'");
            DataRow dr = dtSinhVien.Rows[0];
            lblMaSV.Text = MaSV;
            lblTenSinhVien.Text = dr["TENSV"].ToString();
            return dtSinhVien;
        }
       
        public Exam(string MaSV, string MaDe)
        {
            InitializeComponent();
            this.FormBorderStyle = FormBorderStyle.None;
            this.MaSV = MaSV;
            this.MaDe = MaDe;
            this.WindowState = FormWindowState.Maximized;
          
         
        }
 
     
     
        List<char> SelectedAnswers = new List<char>();
        List<char> RightAnswers = new List<char>();
        List<int> QList = new List<int>();
        void CauHoiNgauNhien(string MucDo,int SoCau,string MaMH)
        {
            
         
            DataTable dt = db.getDataTable("Select * from CAUHOI where MUCDO =" + MucDo + " AND MAMH='"+MaMH+"'");
            

            Random rd = new Random();
            for (int i = 0; i < SoCau;i++ )
            {
           
                DataRow dr;
                int random;
                int idQuestion;
                char Answer;
                do
                {
                    random = rd.Next(dt.Rows.Count);
                    dr = dt.Rows[random];
                    idQuestion =(int) dr["MACAUHOI"];
                } while (QList.Contains(idQuestion));
                Answer = (char) dr["DAPAN"].ToString()[0];
                RightAnswers.Add(Answer);
                QList.Add(idQuestion);
            }
         

        }
        int index = 0;
 
        void loadQuestion()
        {
           
            string stt = index+1 + ". ";
            DBconnect db = new DBconnect();

          
            DataTable dt =  db.getDataTable("Select * from CAUHOI where MACAUHOI =" + QList[index]);
       
            DataRow dr = dt.Rows[0];
            lblQuestion.Text = stt+ dr["CAUHOI"].ToString();
            custom1.Text = "A. " + dr["A"].ToString();
            custom2.Text ="B. " +  dr["B"].ToString();
            custom3.Text = "C. " +dr["C"].ToString();
            custom4.Text ="D. " + dr["D"].ToString();
            for (int i = 0; i < tongCauHoi; i++)
            {
                SelectedAnswers.Add('F');
            }
        }
        List<Button> listBtnQuestion = new List<Button>();
        void loadList()
        {
           
            for(int i=0;i<tongCauHoi;i++)
            {
                 Button btn = new Button();

                 btn.BackColor = Color.Red;
                 btn.ForeColor = Color.White;
                 btn.Text = i + 1 + " ";
                 btn.Width = 110;
                 btn.Height = 40;
                 btn.Font = new Font("Arial", 10);
                 btn.Click += listBtn_Click;
                btn.FlatStyle = FlatStyle.Flat;
                btn.FlatAppearance.BorderSize = 0;
                 pnList.Controls.Add(btn);
                 listBtnQuestion.Add(btn);
            }
           

        }

        void listBtn_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            //lay mau pattern la ky tu so
            string pattern = @"\d+";
            Match so = Regex.Match(btn.Text, pattern);
            index = int.Parse(so.Value)-1;
            loadQuestion();

        }

        private void btnA_Click(object sender, EventArgs e)
        {
           
                lblDaLam.Text =SelectedAnswers.Count.ToString();
            int chualam = tongCauHoi - SelectedAnswers.Count;
            lblChuaLam.Text = chualam.ToString();
                Button btn = (Button)sender;
                SelectedAnswers[index] = btn.Text[0];
                listBtnQuestion[index].BackColor = Color.Green;
                listBtnQuestion[index].Text = index + 1 + "." + btn.Text[0].ToString();
                if (index < tongCauHoi-1)
                {
                index++;
                loadQuestion();
                }
            else MessageBox.Show("Đã đến câu cuối cùng");
        }

        private void Exam_Load(object sender, EventArgs e)
        {
            getDataDeThi();
            getDataSinhVien();
            lblChuaLam.Text = tongCauHoi.ToString();
            
            timer1.Start();
           
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
           

        }

        void LuuKetQua(float diem)
        {
            db.getNonQuery("INSERT INTO KETQUA VALUES('" + MaSV +"','" +MaMH+"','"+MaDe +"'," + diem+")" );
            
        }
        string ChamDiem()
        {
            int AnswerSelectedRight = 0;
            for(int i=0;i<tongCauHoi;i++)
            {
                if (RightAnswers[i] == SelectedAnswers[i]) AnswerSelectedRight++;
            }
            string ThongBao = "Làm đúng " + AnswerSelectedRight + "/" +tongCauHoi + " câu\nĐiểm của bạn là: ";

            float diem = (float)10 / tongCauHoi * AnswerSelectedRight;
            LuuKetQua(diem);
            ThongBao =ThongBao+ diem.ToString();
            return ThongBao;
        }

        private void Exam_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (ThoiGian <= 0) MessageBox.Show("Đã hết thời gian làm bài");
            else
            {
                DialogResult r = MessageBox.Show("Bạn có muốn nộp bài thi ?", "Xác nhận nộp bài !", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (r == DialogResult.No) e.Cancel = true;
                else
                {
                    MessageBox.Show(ChamDiem());
                }
            }
        }

        void UpdateTimerText()
        {
            int minutes = ThoiGian / 60;
            int seconds = ThoiGian % 60;
            label5.Text = String.Format("{0:D2}:{1:D2}", minutes, seconds);
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            ThoiGian--;
            UpdateTimerText();
            if (ThoiGian == 0)
            {
                timer1.Stop();
                this.Close(); 
            }
        }

        private void btnPrevious_Click(object sender, EventArgs e)
        {
            if (index ==0) return;
            index--;
            loadQuestion();
        }

        private void btnNext_Click(object sender, EventArgs e)
        {
            if (index == tongCauHoi - 1) return;
            index++;
            loadQuestion();
        }

    
       
    
    }
    
}
