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
    public partial class Form2 : Form
    {
        static string cadena = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        private DataTable GetProductos()
        {
            SqlConnection connection = new SqlConnection(cadena);
            SqlDataAdapter dataAdapter = new SqlDataAdapter("sp_GetProductos", connection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure; 

            DataTable dataTable = new DataTable();
            dataAdapter.Fill(dataTable); 

            return dataTable;
        }

        private DataTable GetCategorias()
        {
            SqlConnection connection = new SqlConnection(cadena);
            SqlDataAdapter dataAdapter = new SqlDataAdapter("sp_GetCategorias", connection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            DataTable dataTable = new DataTable();
            dataAdapter.Fill(dataTable);

            return dataTable;
        }

        public Form2()
        {
            InitializeComponent();

            cboCategoria.DataSource = GetCategorias();
            cboCategoria.DisplayMember = "nombreCategoria";
            cboCategoria.ValueMember = "idCategoria";

            dgProducto.DataSource = GetProductos(); 

        }


        private void btnAgregar_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(cadena);

            try
            {
                SqlCommand cmd = new SqlCommand("sp_InsertProducto", connection); 
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmstridCategoria", cboCategoria.SelectedValue);
                cmd.Parameters.AddWithValue("@prmstrnombreProducto", txtNombre.Text);
                cmd.Parameters.AddWithValue("@prmstrprecioUnitario", txtPrecio.Text);
                cmd.Parameters.AddWithValue("@prmintrStock", txtStock.Text);

                connection.Open();
                int registros = cmd.ExecuteNonQuery(); 
                if( registros > 0)
                {
                    dgProducto.DataSource = GetProductos();
                    MessageBox.Show("Se realizo el registro"); 
                }
                else
                {
                    MessageBox.Show("Error en el registro");
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);

            }
            finally
            {
                connection.Close();
            }

        }

        private void btnActualizar_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(cadena);

            try
            {
                SqlCommand cmd = new SqlCommand("sp_UpdateProducto ", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmstridProducto",txtId.Text);
                cmd.Parameters.AddWithValue("@prmstridcategoria", cboCategoria.SelectedValue);
                cmd.Parameters.AddWithValue("@prmstrnombreProducto", txtNombre.Text); 
                cmd.Parameters.AddWithValue("@prmstrprecioUnitario ", txtPrecio.Text);
                cmd.Parameters.AddWithValue("@prmintrStock", txtStock.Text);
                connection.Open();
                int registros = cmd.ExecuteNonQuery(); 

                if( registros >0)
                {
                    dgProducto.DataSource = GetProductos();
                    MessageBox.Show("Se actualizo el registro");
                }
                else
                {
                    MessageBox.Show("Ocurrio un error");
                }

            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
            finally
            {
                connection.Close();
            }

        }

        private void dgProducto_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow fila = dgProducto.CurrentRow;


            txtId.Text = fila.Cells[0].Value.ToString();
            cboCategoria.Text = fila.Cells[1].Value.ToString(); 
            txtNombre.Text = fila.Cells[2].Value.ToString();
            txtPrecio.Text = fila.Cells[3].Value.ToString();
            txtStock.Text = fila.Cells[4].Value.ToString();      
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtId.Text))
            {
                MessageBox.Show("Seleccionar registro");

                return; 
            }

            SqlConnection connection = new SqlConnection(cadena);

            try
            {
                SqlCommand cmd = new SqlCommand("sp_DeleteProducto", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmstridProducto", txtId.Text);

                connection.Open();
                int registros = cmd.ExecuteNonQuery();

                if(registros > 0)
                {
                    dgProducto.DataSource = GetProductos();
                    txtId.Text = "";
                    txtNombre.Text = "";
                    txtPrecio.Text = "";
                    txtStock.Text = "";
                    MessageBox.Show("Se elimino correctamente");
                }
                else
                {
                    MessageBox.Show("ocurrio un error");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                connection.Close();
               
            }
        }
    }
}
