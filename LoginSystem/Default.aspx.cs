using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LoginSystem
{
    public partial class _Default : Page
    {
        private SqlConnection con = new SqlConnection(@"Data Source=azurewebapplication.database.windows.net;Initial Catalog=webapp;User ID=joy51744;Password=Joy98ma0415;Connect Timeout=60;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from RegistrationTable where UserName = '" + TextBoxName.Text + "' and Password = '" + TextBoxPassword.Text + "' ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                string txt = TextBoxName.Text;
                Session["UserName"] = txt;
                Response.Redirect("~/LoginHome.aspx");
            }
            con.Close();
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            TextBoxName.Text = "";
            TextBoxPassword.Text = "";
        }
    }
}