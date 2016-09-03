using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libros
{
    public partial class ingresoLibros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMensaje.Visible = false;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!rfISBN.IsValid || !rfTitulo.IsValid || !rfAutor.IsValid || !rfEditorial.IsValid)
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Datos ingresados no validos, o incompletos";
                
            }
            else
            {
                bool encontrado = false;
                foreach (clsLibros aux in clsLibros.librero)
                {
                    if (aux.isbm.Equals(txtISBM.Text))
                    {
                        encontrado = true;
                    }
                }
                if (encontrado == false)
                {
                    lblMensaje.Visible = true;
                    clsLibros l = new clsLibros(txtISBM.Text, txtTitulo.Text, txtAutor.Text, txtEditorial.Text);
                    clsLibros.librero.Add(l);
                    lblMensaje.Text = "Ingresado Correctamente";
                    txtAutor.Text = "";
                    txtEditorial.Text = "";
                    txtISBM.Text = "";
                    txtTitulo.Text = "";
                }
                else
                {
                    lblMensaje.Visible = true;
                    lblMensaje.Text = "libro ya en base de datos";
                }
                
            }
        }
    }
}