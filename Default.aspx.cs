using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {//mostra
        string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CC))
        {
            SqlDataAdapter da = new SqlDataAdapter("spInventario", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CC))
        {
            SqlDataAdapter da = new SqlDataAdapter("spProductoPorId", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@IDcuenta", TextBox1.Text);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string cc = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
        SqlConnection con = new SqlConnection(cc);
        SqlDataAdapter da = new SqlDataAdapter((string)ViewState["SQL_Consulta"],
        con);
        SqlCommandBuilder builder = new SqlCommandBuilder(da);
        DataSet ds = (DataSet)ViewState["DATASET"];
        if (ds.Tables["Estudiantes"].Rows.Count > 0)
        {
            DataRow fila = ds.Tables["CuentasBancarias"].Rows[0];
            fila["IDcuenta"] = TextBox7.Text;
            fila["idBanco"] = TextBox8.Text;
            fila["Banco"] = TextBox9.Text;
            fila["sucursal"] = TextBox10.Text;
            fila["NumeroCuenta"] = TextBox11.Text;
        }
        int filasActualizadas = da.Update(ds, "Estudiantes");

        if (filasActualizadas > 0)
        {
            lblMensaje.ForeColor = System.Drawing.Color.Green;
            lblMensaje.Text = "Registro actualizado";
        }
        else
        {
            lblMensaje.ForeColor = System.Drawing.Color.Red;
            lblMensaje.Text = "Ningún registro actualizado";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        string cc = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
        SqlConnection con = new SqlConnection(cc);
        SqlDataAdapter da = new SqlDataAdapter((string)ViewState["SQL_Consulta"],
        con);
        SqlCommandBuilder builder = new SqlCommandBuilder(da);
        DataSet ds = (DataSet)ViewState["DATASET"];
        if (ds.Tables["Estudiantes"].Rows.Count > 0)
        {
            DataRow fila = ds.Tables["CuentasBancarias"].Rows[0];
            fila["IDcuenta"] = TextBox7.Text;
            fila["idBanco"] = TextBox8.Text;
            fila["Banco"] = TextBox9.Text;
            fila["sucursal"] = TextBox10.Text;
            fila["NumeroCuenta"] = TextBox11.Text;
        }
        int filasActualizadas = da.Update(ds, "Estudiantes");

        if (filasActualizadas > 0)
        {
            lblMensaje.ForeColor = System.Drawing.Color.Green;
            lblMensaje.Text = "Registro actualizado";
        }
        else
        {
            lblMensaje.ForeColor = System.Drawing.Color.Red;
            lblMensaje.Text = "Ningún registro actualizado";
        }
    }
}