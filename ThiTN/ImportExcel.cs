using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace ThiTN
{
    public partial class ImportExcel : Form
    {
        string TableName;
        public ImportExcel(DataTable dt, string TableName)
        {
            this.TableName = TableName;
            InitializeComponent();
            dtgoc = dt;
        }
        public DataTable dtgoc;
        DataTable dtExcel = new DataTable();
        DBconnect db = new DBconnect();
        private void btnCo_Click(object sender, EventArgs e)
        {
            foreach (DataRow row in dtExcel.Rows)
            {
             
                DataRow newRow = dtgoc.NewRow();
                newRow.ItemArray = row.ItemArray;

               
               dtgoc.Rows.Add(newRow);
            }

            if (dtgoc.Rows.Count > 0)
            {
                int lastColumnIndex = dtgoc.Columns.Count - 1;
                string lastColumnName = dtgoc.Columns[lastColumnIndex].ColumnName;

                foreach (DataRow row in dtgoc.Rows)
                {
                    // Check if the last column exists and is of string type
                    if (row.Table.Columns.Contains(lastColumnName) && row[lastColumnName] is string)
                    {
                        // Trim the value in the last column
                        row[lastColumnName] = ((string)row[lastColumnName]).Trim();
                    }
                }
            }
            string sql;
           
             sql ="SELECT * FROM " +TableName;
          int kt=  db.updateDataTable(dtgoc, sql);
          if (kt != 0) MessageBox.Show("Nhập file excel thành công");
          else MessageBox.Show("Nhập file excel thất bại");
          this.Close();
        }
           
        private void ImportExcel_Load(object sender, EventArgs e)
        {
            try
            {
                if (openFileDialog1.ShowDialog() == DialogResult.OK)
                {
                    using (OleDbConnection myConnect = new OleDbConnection(string.Format(@"provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties=Excel 8.0;", openFileDialog1.FileName)))
                    {
                    
                        OleDbDataAdapter cmd = new OleDbDataAdapter("select * from [Sheet1$]", myConnect);
                        cmd.Fill(dtExcel);
                        dgvExcel.DataSource = dtExcel;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnKhong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

     
    }
}
