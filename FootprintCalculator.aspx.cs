using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarbonFootprintClient
{
    public partial class FootprintCalculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            
            CarbonRef.CarbonService service = new CarbonRef.CarbonService();
            string projectName = txtName.Text;
            string location = txtLocation.Text;
            string duration = txtDuration.Text;
            string scope = txtScope.Text;
           
            double energy = double.Parse(txtEnergy.Text);
            double distance = double.Parse(txtDistance.Text);
            double waste = double.Parse(txtWaste.Text);

            // Emission factors (Hardcoded)
            double ef_energy = 0.233;    
            double ef_transport = 0.121; 
            double ef_waste = 1.5;       

            
            double cf_energy = service.CalculateEnergyFootprint(energy, ef_energy);
            double cf_transport = service.CalculateTransportFootprint(distance, ef_transport);
            double cf_waste = service.CalculateWasteFootprint(waste, ef_waste);
            double total = service.CalculateTotalFootprint(cf_energy, cf_transport, cf_waste);

            // Display
            lblResult.Text = $"<hr/>" +
                             $"<h3>📋 Project Summary</h3>" +
                             $"<b>Project Name:</b> {txtName.Text}<br/>" +
                             $"<b>Location:</b> {txtLocation.Text}<br/>" +
                             $"<b>Duration:</b> {txtDuration.Text} days<br/>" +
                             $"<b>Scope:</b> {txtScope.Text}<br/><br/>" +

                             $"<h3>🌱 Carbon Footprint Breakdown</h3>" +
                             $"<b>Energy Footprint:</b> {cf_energy:F2} kg CO2<br/>" +
                             $"<b>Transport Footprint:</b> {cf_transport:F2} kg CO2<br/>" +
                             $"<b>Waste Footprint:</b> {cf_waste:F2} kg CO2<br/><br/>" +
                             $"<h3>Total Carbon Footprint: <span style='color:green'>{total:F2} kg CO2</span></h3>";

        }
    }
}