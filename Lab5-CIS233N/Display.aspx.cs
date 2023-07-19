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
    public partial class Display : System.Web.UI.Page
    {
        //adds from to database connection
        SqlConnection connect = new SqlConnection
            (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //open connection
                connect.Open();

                string sqlquery = "INSERT INTO [Table] (userName,email,password,state) VALUES (@userName,@email,@password,@state)";

                SqlCommand command = new SqlCommand(sqlquery, connect);
                //adds data to table columns
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
                //refreshes the page to show the new added data
                Response.Redirect(Request.RawUrl);
            }
            catch
            {
                //Error message

            }
        }

        protected void emailTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}