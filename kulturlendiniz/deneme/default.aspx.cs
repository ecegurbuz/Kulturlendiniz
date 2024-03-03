﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deneme
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NewMethod();
            NewMethod1();
        }

        private void NewMethod()
        {
            SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings[0].ConnectionString);

            string sorgu = "Select * from basliklar order by tarih";

            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            Basliklar.DataSource = dr;
            Basliklar.DataBind();
            cnn.Close();
        }

        private void NewMethod1()
        {
            SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings[0].ConnectionString);

            string sorgu = "select top(5) id,baslik, y_sayisi=Count(yorumID) From yorumlar inner join basliklar on konuID=id Group by baslik,id order by y_sayisi desc";

            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            popüler.DataSource = dr;
            popüler.DataBind();
            cnn.Close();
        }
    }
}