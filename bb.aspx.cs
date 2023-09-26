using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication24
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Data Source=DESKTOP-CCNHMQU\\SQLEXPRESS;Initial Catalog=demo;Integrated Security=True");
            String sql = "insert into demotable1 values('"+TextBox1.Text+"','"+TextBox2.Text+"')";
            SqlDataAdapter sda = new SqlDataAdapter(sql,cn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Response.Write("Inserted");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Data Source=DESKTOP-CCNHMQU\\SQLEXPRESS;Initial Catalog=demo;Integrated Security=True");
            String sql = "select * from demotable1";
            SqlDataAdapter sda = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Data Source=DESKTOP-CCNHMQU\\SQLEXPRESS;Initial Catalog=demo;Integrated Security=True");
            String sql = "delete from demotable1 where rollno='"+TextBox2.Text+"'";
            SqlDataAdapter sda = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Response.Write("Deleted");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Data Source=DESKTOP-CCNHMQU\\SQLEXPRESS;Initial Catalog=demo;Integrated Security=True");
            String sql = "update demotable1 set name='"+TextBox1.Text+"' where rollno='"+TextBox2.Text+"'";
            SqlDataAdapter sda = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Response.Write("Deleted");
        }
    }
}
