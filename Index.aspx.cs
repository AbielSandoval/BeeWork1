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
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {




            if (Session["usuariologueado"] != null)
            {
                string usuariologueado = Session["usuariologueado"].ToString();
                //lblTUsuario.Text = "Bienvenido " + usuariologueado;
                if(usuariologueado == "Administrador")
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

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM [Post] where Categoria LIKE '%" + txtBuscar.Text +"%'" ;
            SqlDataSource1.DataBind();

        }

        protected void gvEmpleos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
} 