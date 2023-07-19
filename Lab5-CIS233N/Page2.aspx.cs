using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Lab5_CIS233N
{
    public partial class Page2 : System.Web.UI.Page
    {
        //New SQL connection
        SqlConnection connect = new SqlConnection
            (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //makes the page not have an error message
            ValidationSettings.UnobtrusiveValidationMode =
                    UnobtrusiveValidationMode.None;
            //adds image to picture box
            loginImage.ImageUrl = "lock.png";
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            //logs cookies from users log in and password, and sets expiration dates of both
            if (CheckBox1.Checked)
            {
                Response.Cookies["userName"].Value = emailTextBox.Text;

                Response.Cookies["password"].Value = passwordTextBox.Text;

                Response.Cookies["userName"].Expires = DateTime.Now.AddDays(30);

                Response.Cookies["password"].Expires = DateTime.Now.AddDays(30);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                //searching through database
                string myquery = "Select Count(*) from [Table] where email='" + emailTextBox.Text + "'and password='" + passwordTextBox.Text + "'";
                //attempt to open a connection
                connect.Open();
                //created SQL command
                SqlCommand command = new SqlCommand(myquery, connect);
                string end = command.ExecuteScalar().ToString();
                
                if (end=="1")
                {
                    //send to display page
                    Server.Transfer("Display.aspx", true);
                }
                else
                {
                    //Displays error message
                    MessageBox.Show("Error!" + "\n" + "You don't Seem to be in our records." + "\n" + "Please try again or create an account.");
                }
                //close connection
                connect.Close();
            }
            catch
            {
                //catch user invalid input and display alert

            }
            
        }
    }
}