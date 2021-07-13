using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace BeeWork
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string TipoUsuario = "Usuario";
        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlconectar = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("SP_AgregarUsuario", sqlconectar)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            
            if (txtNombre.Text == "")
            {
                lblError.Text = "Ingrese su nombre";
            }
            else
            {
                if (txtApellido.Text == "")
                {
                    lblError.Text = "Ingrese su apellido";
                }
                else
                {
                    if (txtCorreo.Text == "")
                    {
                        lblError.Text = "Ingrese su correo";
                    }
                    else
                    {
                        if (txtUsuario.Text == "")
                        {
                            lblError.Text = "Ingrese su usuario";
                        }
                        else
                        {
                            if (txtContraseña.Text == "")
                            {
                                lblError.Text = "Ingrese su contraseña";
                            }
                            else
                            {
                                cmd.Parameters.Add("@Nombre", SqlDbType.VarChar, 20).Value = txtNombre.Text;
                                cmd.Parameters.Add("@Apellido", SqlDbType.VarChar, 25).Value = txtApellido.Text;
                                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = txtCorreo.Text;
                                cmd.Parameters.Add("@Username", SqlDbType.VarChar, 25).Value = txtUsuario.Text;
                                cmd.Parameters.Add("@Contraseña", SqlDbType.VarChar, 50).Value = txtContraseña.Text;
                                cmd.Parameters.Add("@TipoUsuario", SqlDbType.VarChar, 20).Value = TipoUsuario;

                                using (SqlDataReader dr = cmd.ExecuteReader())
                                {
                                    if (dr.Read())
                                    {
                                        lblError.Text = "Ops ha ocurrido un error";
                                    }
                                    else
                                    { 
                                        lblError.Text = "Usuario creado exitosamente!!!";
                                        
                                    }
                                }
                            }
                        }

                    }
                }
            }
            cmd.Connection.Close();
        }
    }
}