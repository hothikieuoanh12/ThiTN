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
    public partial class DanhSachThi : Form
    {
        string MADE;
        string MAMH;
        public DanhSachThi(string MADE,string MAMH)
        {
            InitializeComponent();
            this.MADE = MADE;
            this.MAMH = MAMH;
        }
        DBconnect db = new DBconnect();
        List<string> listThem = new List<string>();
        List<string> listXoa = new List<string>();
        void loadChuaCo()
        {
            DataTable dt = db.getDataTable("select MALOP from LOPHOCPHAN where MADE IS NULL AND MAMH='" + MAMH + "' GROUP BY MALOP");
            foreach(DataRow dr in dt.Rows)
            {
                listChuaCo.Items.Add(dr["MALOP"].ToString());
               
            }
           


          
        
        }
        void loadDaCo()
        {
            DataTable dt =  db.getDataTable("select MALOP from LOPHOCPHAN where MADE='" + MADE + "' AND MAMH='"+ MAMH +"' GROUP BY MALOP");
            List<string> listMaLop = new List<string>();
           foreach(DataRow dr in dt.Rows)
           {
               listDaCo.Items.Add(dr["MALOP"]).ToString();
              
           }
        
        
        }
        private void btnThem_Click(object sender, EventArgs e)
        {
            listDaCo.Items.Add(listChuaCo.SelectedItem);
            listThem.Add(listChuaCo.SelectedItem.ToString());
            listChuaCo.Items.Remove(listChuaCo.SelectedItem);
        }

   

        private void btnXoa_Click(object sender, EventArgs e)
        {
            listChuaCo.Items.Add(listDaCo.SelectedItem);
            listXoa.Add(listDaCo.SelectedItem.ToString());
            listDaCo.Items.Remove(listDaCo.SelectedItem);
        }

        private void DanhSachThi_Load(object sender, EventArgs e)
        {
            loadChuaCo();
            loadDaCo();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            foreach(string item in listThem)
            {
                db.getNonQuery("UPDATE LOPHOCPHAN SET MADE= '" + MADE + "' WHERE MALOP='" +item +"'");
            }
            foreach (string item in listXoa)
            {
                db.getNonQuery("UPDATE LOPHOCPHAN SET MADE = NULL  WHERE MALOP='" + item + "'");
            }
            MessageBox.Show("Lưu thành công");
            this.Close();
        }

        
    }
}
