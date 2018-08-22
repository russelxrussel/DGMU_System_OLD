﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;


namespace DGMU_System
{
    public partial class repBeginning_Ending_Inventory_Summary : System.Web.UI.Page
    {
        ReportDocument oReportDocument = new ReportDocument();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                txtStartDate.Text = DateTime.Now.ToShortDateString();
            }



            DisplayReport();

           
        }

        private void DisplayReport()
        {
            DateTime dtStartDate = Convert.ToDateTime(txtStartDate.Text);
           // DateTime dtEndDate = Convert.ToDateTime(txtEndDate.Text);

            //ParameterRangeValue myRangeValue = new ParameterRangeValue();
            //myRangeValue.StartValue = dtStartDate; //txtDateStart.Text;
            //myRangeValue.EndValue = dtEndDate;

            try
            {
                oReportDocument.Load(Server.MapPath("~/Reports/Inventory_Beginning_Ending.rpt"));

                oReportDocument.SetParameterValue("TransactionDate", dtStartDate);
                oReportDocument.SetDatabaseLogon("sa", "p@ssw0rd");

                CrystalReportViewer1.ReportSource = oReportDocument;
            }
            catch
            {

            }

        }
        protected void Page_UnLoad(object sender, EventArgs e)
        {

            //Cleaning Report Documents
            oReportDocument.Close();

        }

        protected void U_Print_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtStartDate.Text))
            {

                lblErrorPrompt.Text = "Input required.";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "<script>$('#msgErrorModal').modal('show');</script>", false);

            }
            else
            {
                DisplayReport();
            }
        }
    }
}