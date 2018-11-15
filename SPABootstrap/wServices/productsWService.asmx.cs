using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Configuration;
using System.Data;

namespace SPABootstrap.wServices
{
    /// <summary>
    /// Summary description for productsWService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class productsWService : System.Web.Services.WebService
    {

        [WebMethod]
        public void GetAllProducts()
        {
            System.Threading.Thread.Sleep(500);
            List<Product> listProducts = new List<Product>();

            string cs = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spGetProducts", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Product product = new Product();
                    product.id = Convert.ToInt32(rdr["product_id"]);
                    product.name = rdr["product_name"].ToString();
                    product.desc = rdr["product_desc"].ToString();
                    product.summary = rdr["product_summary"].ToString();
                    product.image = rdr["product_image"].ToString();
                    product.weight = Convert.ToInt32(rdr["product_weight"]);
                    product.in_stock = Convert.ToInt32(rdr["product_in_stock"]);
                    product.brand = rdr["product_brand"].ToString();
                    product.category = rdr["product_category"].ToString();
                    product.price = Convert.ToInt32(rdr["product_price"]);
                    product.added_by = rdr["product_added_by"].ToString();
                    listProducts.Add(product);
                }
            }

            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(listProducts));
        }

        [WebMethod]
        public void GetProduct(int id)
        {
            Product product = new Product();

            string cs = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new
                    SqlCommand("Select * from tbl_asap_products where product_id = @id", con);

                SqlParameter param = new SqlParameter()
                {
                    ParameterName = "@id",
                    Value = id
                };

                cmd.Parameters.Add(param);

                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    product.id = Convert.ToInt32(rdr["product_id"]);
                    product.name = rdr["product_name"].ToString();
                    product.desc = rdr["product_desc"].ToString();
                    product.summary = rdr["product_summary"].ToString();
                    product.image = rdr["product_image"].ToString();
                    product.weight = Convert.ToInt32(rdr["product_weight"]);
                    product.in_stock = Convert.ToInt32(rdr["product_in_stock"]);
                    product.brand = rdr["product_brand"].ToString();
                    product.category = rdr["product_category"].ToString();
                    product.price = Convert.ToInt32(rdr["product_price"]);
                    product.added_by = rdr["product_added_by"].ToString();
                }
            }

            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(product));
        }

        [WebMethod]
        public void AddProduct(addProduct product)
        {
            string cs = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spInsertProduct_gururaj", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@product_name",
                    Value = product.txtproductName
                });

                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@product_category",
                    Value = product.selproductcategory
                });

                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@product_desc",
                    Value = product.txtproductDescription
                });

                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@product_summary",
                    Value = product.txtproductSummary
                });

                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@product_image",
                    Value = product.txtproductImage
                });

                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@product_weight",
                    Value = product.txtproductWeight
                });

                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@product_in_stock",
                    Value = product.selproductInStock
                });

                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@product_brand",
                    Value = product.selproductBrand
                });

                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@product_price",
                    Value = product.txtproductPrice
                });

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }   
}
