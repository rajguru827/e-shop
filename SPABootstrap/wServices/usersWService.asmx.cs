using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

namespace SPABootstrap.wServices
{
    /// <summary>
    /// Summary description for usersWService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class usersWService : System.Web.Services.WebService
    {
        [WebMethod]
        public void AddUser(User user)
        {
            string cs = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spInsertUser_gururaj", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@user_fullname",
                    Value = user.txtfullname
                });

                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@user_date_of_birth",
                    Value = user.seldateofbirth
                });

                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@user_email",
                    Value = user.txtemail
                });

                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@user_password",
                    Value = user.txtpassword
                });

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

    }
}
