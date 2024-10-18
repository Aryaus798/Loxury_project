using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Loxury_project
{
    public class ConClass
    {
        SqlConnection con;
        SqlCommand cmd;

        public ConClass()
        {
            con = new SqlConnection(@"server=VICTUS\SQLEXPRESS02;database=project;Integrated security=True");
        }
        public int Fun_exenonquery(string sql)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sql, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
        public string fun_exescalar(string sql)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sql, con);
            con.Open();
            string s = cmd.ExecuteScalar().ToString();
            con.Close();
            return s;
        }
        public SqlDataReader fun_exeReader(string sql)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public DataSet fun_exeAdapter(string sql)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataTable fun_exedatatable(string sql)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}
