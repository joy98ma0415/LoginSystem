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
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ButtonChagePassword_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=azurewebapplication.database.windows.net;Initial Catalog=webapp;User ID=joy51744;Password=Joy98ma0415;Connect Timeout=60;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            SqlDataAdapter sda = new SqlDataAdapter("select * from RegistrationTable where UserName = '" + TextBoxName.Text + "' and  Password = '" + TextBoxPassword.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count.ToString() == "1")
            {
                if (TextBoxChangePassword.Text == TextBoxConfirmPassword.Text)
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("update RegistrationTable set Password = '" + TextBoxConfirmPassword.Text + "' where UserName = '" + TextBoxName.Text + "'", con);
                    cmd.ExecuteNonQuery();

                    con.Close();
                    LabelMsg.Text = "Successfully Updated.";

                    LabelMsg.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    LabelMsg.Text = "New Password and Confirm Password should be same.";
                }
            }
            else
            {
                LabelMsg.Text = "Please check your old password.";
            }
        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}