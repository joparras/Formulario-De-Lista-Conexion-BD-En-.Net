using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration; 



namespace CL3_POLICARPIO_PARRAS_JOSE
{
    public partial class Form1 : Form
    {
        String cadena = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        private DataTable GetComprasByFechasProveedor(DateTime fechaInicio, DateTime fechaFin, int idProveedor)
        {
            SqlConnection connection = new SqlConnection(cadena);
            string sentenciaSQL = "EXEC sp_GetComprasByFechasProveedor @prmdatFechaInicio, @prmdatFechaFin,@prmintIdProveedor";


            SqlCommand sqlCommand = new SqlCommand(sentenciaSQL, connection);
            sqlCommand.Parameters.AddWithValue("@prmdatFechaInicio", fechaInicio);
            sqlCommand.Parameters.AddWithValue("@prmdatFechaFin", fechaFin);
            sqlCommand.Parameters.AddWithValue("@prmintIdProveedor", idProveedor);

            connection.Open();

            SqlDataReader dr = sqlCommand.ExecuteReader();

            DataTable dataTable = new DataTable();
            dataTable.Columns.Add("IdOrdenCompra");
            dataTable.Columns.Add("Codigo");
            dataTable.Columns.Add("FechaEmision");
            dataTable.Columns.Add("idProveedor");
            dataTable.Columns.Add("razonSocial");
            dataTable.Columns.Add("total");


            while (dr.Read())
            {
                DataRow fila = dataTable.NewRow();

                fila[0] = dr.GetInt32(0);
                fila[1] = dr.GetString(1);
                fila[2] = dr.GetDateTime(2);
                fila[3] = dr.GetInt32(3);
                fila[4] = dr.GetString(4);
                fila[5] = dr.GetDecimal(5);

                dataTable.Rows.Add(fila);

            }
            connection.Close();
            return dataTable; 
        }

        private DataTable GetProveedores()
        {
            SqlConnection connection = new SqlConnection(cadena);
            SqlDataAdapter dataAdapter = new SqlDataAdapter("sp_GetProveedores", connection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            DataTable dataTable = new DataTable();
            dataAdapter.Fill(dataTable);

            return dataTable;

        }
        public Form1()
        {
            InitializeComponent();

            cboProveedor.DataSource = GetProveedores();
            cboProveedor.DisplayMember = "razonSocial";
            cboProveedor.ValueMember = "idProveedor";
     
        }

        private void btnConsulta_Click(object sender, EventArgs e)
        {
           
          dgCompras.DataSource = GetComprasByFechasProveedor(dtFechaInicio.Value, dtFechaFinal.Value, (int)cboProveedor.SelectedValue); 
            
        }
    }
}
