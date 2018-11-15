using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SPABootstrap.wServices
{
    public class addProduct
    {
        public int id { get; set; }
        public string txtproductName { get; set; }
        public string txtproductDescription { get; set; }
        public string txtproductSummary { get; set; }
        public string txtproductImage { get; set; }
        public float txtproductWeight { get; set; }
        public int selproductInStock { get; set; }
        public string selproductBrand { get; set; }
        public string selproductcategory { get; set; }
        public float txtproductPrice { get; set; }
    }
}