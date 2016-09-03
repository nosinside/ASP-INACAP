﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libros
{
    public partial class realizarPrestamo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMensaje.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (clsLibros aux in clsLibros.librero)
            {
                if (txtISBM.Text == aux.isbm)
                {
                    lblMensaje.Visible = true;
                    lblMensaje.Text = aux.prestarLibro(txtISBM.Text);
                    
                }
            }
            {
                
            }
        }
    }
}