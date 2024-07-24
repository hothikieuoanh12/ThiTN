using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
namespace ThiTN
{
    class DBconnect
    {
        string constring = "Data Source=A207PC20;Initial Catalog=QL_ThiTracNghiem;Integrated Security=True";
        SqlConnection con;
        public DBconnect()
        {
            con = new SqlConnection(constring);
        }
        public void open()
        {
            if (con.State == ConnectionState.Closed) con.Open();
        }
        public void close()
        {
            if (con.State == ConnectionState.Open) con.Close();
        }
        public int getNonQuery(string sql)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            int kt = cmd.ExecuteNonQuery();
            con.Close();
            return kt;
        }
        public object getScalar(string sql)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(sql,con);
            object kt = cmd.ExecuteScalar();
            con.Close();
            return kt;
        }
        public DataTable getDataTable(string sql)
        {
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];

        }
        public int updateDataTable(DataTable dtnew, string sql)
        {
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            int kq = da.Update(dtnew);
            return kq;
        }
    }
}
