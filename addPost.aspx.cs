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
    public partial class addPost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuariologueado"] != null)
            {
                string usuariologueado = Session["usuariologueado"].ToString();
                //lblTUsuario.Text = "Bienvenido " + usuariologueado;
                if (usuariologueado == "Administrador")
                {
                    EliminarEmpleo.Visible = true;
                }
                else
                {
                    EliminarEmpleo.Visible = false;
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Remove("usuariologueado");
            Response.Redirect("Login.aspx");
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlconectar = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("SP_AgregarEmpleo", sqlconectar)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            if(txtCompany.Text == "")
            {
                lblError.Text = "Ingrese el nombre de la compañia";
            }
            else
            {
                if(txtPosicion.Text == "")
                {
                    lblError.Text = "Ingrese la Posicion";
                }
                else
                {
                    if(txtUbicacion.Text == "")
                    {
                        lblError.Text = "Ingrese la ubicacion";
                    }
                    else
                    {
                        if(txtDescripcion.Text == "")
                        {
                            lblError.Text = "Ingrese la descripcion";
                        }
                        else
                        {
                            if(txtComoAplicar.Text == "")
                            {
                                lblError.Text = "Ingrese como aplicar";
                            }
                            else
                            {
                                if(txtEmail.Text == "")
                                {
                                    lblError.Text = "Ingrese el Email";
                                }
                                else
                                {
                                    cmd.Parameters.Add("@Company", SqlDbType.VarChar, 20).Value = txtCompany.Text;
                                    cmd.Parameters.Add("@Logo", SqlDbType.VarChar, -1).Value = txtLogo.Text;
                                    cmd.Parameters.Add("@DireccionURL", SqlDbType.VarChar, -1).Value = txtDireccionURL.Text;
                                    cmd.Parameters.Add("@Posicion", SqlDbType.VarChar, 80).Value = txtPosicion.Text;
                                    cmd.Parameters.Add("@Ubicacion", SqlDbType.VarChar, 80).Value = txtUbicacion.Text;
                                    cmd.Parameters.Add("@Categoria", SqlDbType.VarChar, 80).Value = cbCategoria.Text;
                                    cmd.Parameters.Add("@Descripcion", SqlDbType.VarChar, -1).Value = txtDescripcion.Text;
                                    cmd.Parameters.Add("@ComoAplicar", SqlDbType.VarChar, -1).Value = txtComoAplicar.Text;
                                    cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = txtEmail.Text;
                                    using (SqlDataReader dr = cmd.ExecuteReader())
                                    {
                                        if (dr.Read())
                                        {
                                            lblError.Text = "Ops ha ocurrido un error";
                                        }
                                        else
                                        {
                                            lblError.Text = "Empleo creado exitosamente!!!";

                                        }
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