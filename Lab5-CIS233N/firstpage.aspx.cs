using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Lab5_CIS233N
{

    public partial class firstpage : System.Web.UI.Page
    {
        //New SQL connection
        SqlConnection connect = new SqlConnection
            (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //prevents webpage error
            ValidationSettings.UnobtrusiveValidationMode =
                    UnobtrusiveValidationMode.None;
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {


        }

        protected void Button2_Click1(object sender, EventArgs e)
        {

            try
            {
                //opens connection
                connect.Open();
                //insertion into correct columns
                string sqlquery = "INSERT INTO [Table] (userName,email,password,state) VALUES (@userName,@email,@password,@state)";
                //creates new command
                SqlCommand command = new SqlCommand(sqlquery, connect);
                //populates table with new data from the text boxes
                string userName = userNameTextBox.Text;
                command.Parameters.AddWithValue("@userName", userNameTextBox.Text);
                string email = emailTextBox.Text;
                command.Parameters.AddWithValue("@email", emailTextBox.Text);
                string password = passwordTextBox.Text;
                command.Parameters.AddWithValue("@password", passwordTextBox.Text);
                string state = stateDropDownList.SelectedItem.Value;
                command.Parameters.AddWithValue("@state", stateDropDownList.SelectedItem.Value);

                //The execution of query starts here
                command.ExecuteNonQuery();
                //We close the connection
                connect.Close();
                //Redirect to page2
                Server.Transfer("Display.aspx", true);
                //save data
                Response.Cookies["userName"].Value = userNameTextBox.Text;

                Response.Cookies["password"].Value = passwordTextBox.Text;

                Response.Cookies["userName"].Expires = DateTime.Now.AddDays(30);

                Response.Cookies["password"].Expires = DateTime.Now.AddDays(30);
            }
            catch
            {
                //Error message
                
            }

            
        }

        protected void userNameTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void stateDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}