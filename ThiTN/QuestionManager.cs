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
    public partial class QuestionManager : Form
    {
        public QuestionManager()
        {
            InitializeComponent();
        }
        DBconnect db = new DBconnect();
        DataColumn[] key = new DataColumn[1];
        void loadMonHoc()
        {
            DataTable dt = db.getDataTable("Select * from MONHOC");
            DataRow dr = dt.NewRow();
            dr["MAMH"] = "ALL";
            dr["TENMH"] = "Tất cả môn";
            dt.Rows.Add(dr);
            cboMonHoc.DataSource = dt;
            cboMonHoc.DisplayMember ="TENMH";
            cboMonHoc.ValueMember ="MAMH";
            cboMonHoc.SelectedValue = "ALL";
        }
        void loadcbo()
        {
            cboDoKho.Items.Add("Dễ");
           
            cboDoKho.Items.Add("Trung bình");

            cboDoKho.Items.Add("Khó");

            cboAnswer.Items.Add("A");
            cboAnswer.Items.Add("B");
            cboAnswer.Items.Add("C");
            cboAnswer.Items.Add("D");



        }
        DataTable dt;
        void loadQuestionTable()
        {
            dgvCauHoi.DataSource = db.getDataTable("select * from CAUHOI");
        }
        private void CauHoi_Load_1(object sender, EventArgs e)
        {
            dgvCauHoi.DataSource = db.getDataTable("select * from CAUHOI");
            dt = (DataTable)dgvCauHoi.DataSource;
            key[0] = dt.Columns[0];
            dt.PrimaryKey = key;
            


            loadMonHoc();
            loadcbo();
         
        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboMonHoc.SelectedValue.ToString() == "ALL") dgvCauHoi.DataSource = db.getDataTable("SELECT * FROM CAUHOI");
            else
                dgvCauHoi.DataSource = db.getDataTable("select * from CAUHOI where MAMH= '" + cboMonHoc.SelectedValue.ToString() + "'");
        }

        private void button2_Click(object sender, EventArgs e)
        {
           int kt= db.getNonQuery("INSERT INTO CAUHOI (CAUHOI, A, B, C, D, DAPAN, MUCDO, MAMH) VALUES (N'"+ txtQuestion.Text +"', N'"+ txtA.Text+"', N'"+txtB.Text+"', N'"+txtC.Text+"', N'"+txtD.Text+"','"+ cboAnswer.Text +"', N'"+cboDoKho.Text+"', '"+cboMonHoc.SelectedValue.ToString()+"')");
           if (kt != 0) MessageBox.Show("Thêm thành công");
           else MessageBox.Show("Thêm thất bại");
        }

        private void dgvCauHoi_CellClick(object sender, DataGridViewCellEventArgs e)
        {
         
            if (dgvCauHoi.SelectedRows.Count > 0)
            {
               
                DataGridViewRow selectedRow = dgvCauHoi.SelectedRows[0];

                string columnIDValue = selectedRow.Cells["MACAUHOI"].Value.ToString();
                string columnQuestionValue = selectedRow.Cells["CAUHOI"].Value.ToString();
                string columnAValue = selectedRow.Cells["A"].Value.ToString();
                string columnBValue = selectedRow.Cells["B"].Value.ToString();
                string columnCValue = selectedRow.Cells["C"].Value.ToString();
                string columnDValue = selectedRow.Cells["D"].Value.ToString();
                string columnAnswerValue = selectedRow.Cells["DAPAN"].Value.ToString();
                string columnLevelValue = selectedRow.Cells["MUCDO"].Value.ToString();

                lblMaCauHoi.Text = columnIDValue;
                txtQuestion.Text = columnQuestionValue;
                txtA.Text = columnAValue;
                txtB.Text = columnBValue;
                txtC.Text = columnCValue;
                txtD.Text = columnDValue;
                cboDoKho.Text = columnLevelValue;
                cboAnswer.Text = columnAnswerValue;
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
          
            DataRow dr = dt.Rows.Find(lblMaCauHoi.Text);
            if(dr!=null)
            {
               
                dr.Delete();

                int kt = db.updateDataTable(dt, "Select * from CAUHOI");
                dgvCauHoi.DataSource = dt;
                if (kt != 0) MessageBox.Show("Xoa thanh cong");
                else MessageBox.Show("Xoa that bai");

            }
            else MessageBox.Show("Xóa thất bại");
            
              
            
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            string sql = "UPDATE CAUHOI SET CAUHOI = N'" + txtQuestion.Text + "',A= '" + txtA.Text + "',B= '" + txtB.Text + "',C= '" + txtC.Text + "',D= '" + txtD.Text + "',DAPAN='" + cboAnswer.Text + "',MUCDO='" + cboDoKho.Text + "',MAMH='" + cboMonHoc.SelectedValue.ToString() + "' WHERE MACAUHOI='"+ lblMaCauHoi.Text + "'";
           int kt=     db.getNonQuery(sql);
           if (kt != 0)
           {
               loadQuestionTable();
               MessageBox.Show("Cập nhât thành công");

           }
           else MessageBox.Show("Cập nhật thất bại");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)dgvCauHoi.DataSource;
            ImportExcel f = new ImportExcel(dt,"CAUHOI");
            f.ShowDialog();
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            dgvCauHoi.DataSource = db.getDataTable("select * from CAUHOI where CAUHOI LIKE '" + txtTimCauHoi.Text + "%'");
        }

    

       
    }
}
