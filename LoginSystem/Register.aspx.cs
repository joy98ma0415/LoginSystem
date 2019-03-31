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
    public partial class Register : System.Web.UI.Page
    {
        private SqlConnection conn = new SqlConnection(@"Data Source=azurewebapplication.database.windows.net;Initial Catalog=webapp;User ID=joy51744;Password=Joy98ma0415;Connect Timeout=60;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            conn.Open();
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into RegistrationTable values ('" + TextBoxName.Text + "' , '" + TextBoxPassword.Text + "')";
                cmd.ExecuteNonQuery();
                conn.Close();

                Response.Redirect("~/Default.aspx");
            }
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            TextBoxName.Text = "";
            TextBoxPassword.Text = "";
        }
    }
}