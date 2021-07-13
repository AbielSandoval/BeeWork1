using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BeeWork
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string rbtn;
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlconectar = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("SP_ValidarUsuario", sqlconectar)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            cmd.Parameters.Add("@Username", SqlDbType.VarChar, 25).Value = txtUsername.Text;
            cmd.Parameters.Add("@Contraseña", SqlDbType.VarChar, 50).Value = txtPassword.Text;
            if (rbtnAdmin.Checked == true)
            {
                cmd.Parameters.Add("@TipoUsuario", SqlDbType.VarChar, 20).Value = rbtnAdmin.Text;
                rbtn = rbtnAdmin.Text;
            }
            else
            {
                cmd.Parameters.Add("@TipoUsuario", SqlDbType.VarChar, 20).Value = rbtnUser.Text;
                rbtn = rbtnUser.Text;
            }
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                if (dr.Read())
                {
                    Session["usuariologueado"] = rbtn;
                    Response.Redirect("Index.aspx");
                }
                else
                {
                    lblError.Text = "Usuario o Contraseña  incorrecta ";

                }


            }
            cmd.Connection.Close();
        }

        //string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
        //SqlConnection sqlconectar = new SqlConnection(conectar);
        //SqlCommand cmd = new SqlCommand("SP_ValidarUsuario", sqlconectar)
        //{
        //    CommandType = CommandType.StoredProcedure
        //};
        //cmd.Connection.Open();
        //    cmd.Parameters.Add("@Username", SqlDbType.VarChar, 25).Value = txtUsername.Text;
        //    cmd.Parameters.Add("@Contraseña", SqlDbType.VarChar, 50).Value = txtPassword.Text;
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    if(dr.Read())
        //    {
        //        Response.Redirect("Index.aspx");
        //    }
        //    else
        //    {
        //        lblError.Text = "Usuario o Contraseña incorrecta";
        //    }
        //cmd.Connection.Close();

    }
}