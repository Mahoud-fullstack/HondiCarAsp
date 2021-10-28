using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HondiCarASP
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panfinal.Visible = false;
            if (!Page.IsPostBack)
            {
                LabelPhone.Visible = txtPhone.Visible = false;
                DropCar.Items.Add(new ListItem("Civoc", "25000"));
                DropCar.Items.Add(new ListItem("DR.V", "30000"));
                DropCar.Items.Add(new ListItem("Appord", "33000"));
                DropCar.Items.Add(new ListItem("Cilot", "45000"));
                DropCar.Items.Add(new ListItem("Odyrrey", "54000"));
                DropCar.SelectedIndex = 0;

                Listcolor.Items.Add(new ListItem("White", "0"));
                Listcolor.Items.Add(new ListItem("Dark", "300"));
                Listcolor.Items.Add(new ListItem("Pearl", "900"));
                Listcolor.SelectedIndex = 0;

                ChicklistAccess.Items.Add(new ListItem("Aero Kit", "1300"));
                ChicklistAccess.Items.Add(new ListItem("Film", "600"));
                ChicklistAccess.Items.Add(new ListItem("Cold Weather", "900"));
                ChicklistAccess.Items.Add(new ListItem("Hondi Emblem", "150"));
                ChicklistAccess.Items.Add(new ListItem("Snow Tire Package", "1800"));

                ChicklistAccess.SelectedIndex = 0;

                CarlistWaranty.Items.Add(new ListItem("3", "0"));
                CarlistWaranty.Items.Add(new ListItem("5", "1000"));
                CarlistWaranty.Items.Add(new ListItem("7", "1500"));
                CarlistWaranty.SelectedIndex = 0;

            }
            if (DropCar.SelectedIndex > 0)
            {
                CalculePrice();
            }

        }
        private void CalculePrice()
        {
            decimal carPrice = 0, Interior = 0, Accessoires = 0, Warranty = 0, TotWitoutTx = 0, Total = 0, year = 0;
            String modelc = "", address = "", zipcod = "", coint = "", acces = "", tel = "";
            carPrice = Convert.ToDecimal(DropCar.SelectedItem.Value);

            litPrice.Text = "<br><b> Car Price = $ <b>" + carPrice + "</br>";
            Interior = Convert.ToDecimal(Listcolor.SelectedItem.Value);
            litPrice.Text += "<br><b> Interior Color = $ <b>" + Interior + "</br>";
            if (ChDealer.Checked)
            {
                txtPhone.Visible = true;
                LabelPhone.Visible = true;
            }

            foreach (ListItem item in ChicklistAccess.Items)
            {
                Accessoires += (item.Selected) ? Convert.ToDecimal(item.Value) : 0;
            }
            litPrice.Text += "<br><b> accessoir = $ <b>" + Accessoires + "</br>";
            foreach (ListItem item in CarlistWaranty.Items)
            {
                Warranty += (item.Selected) ? Convert.ToDecimal(item.Value) : 0;
            }
            litPrice.Text += "<br><b> warranty = $ <b>" + Warranty + "</br>";



            TotWitoutTx = carPrice + Interior + Accessoires + Warranty;
            litPrice.Text += "<br><b> Total Without Taxes = $ <b>" + TotWitoutTx + "</br>";
            Total += Math.Round(TotWitoutTx * Convert.ToDecimal(1.15), 2);
            litPrice.Text += "<br><b> Total With Taxes(15%) = $ <b>" + Total + "</br>";
        }


        protected void txtCity_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btncon_Click(object sender, EventArgs e)
        {
            if (btncon.Enabled)
            {
                panfinal.Visible = true;
            }
            decimal carPrice = 0, Interior = 0, Accessoires = 0, Warranty = 0, TotWitoutTx = 0, Total = 0, year = 0;
            String modelc = "", zipcod = "", coint = "", acces = "", tel = "", city = "";
            modelc = DropCar.SelectedItem.Text;
            zipcod = txtZip.Text;
            city = txtCity.Text;
            coint = Listcolor.SelectedItem.Text;
            foreach (ListItem item in ChicklistAccess.Items)
            {
                if (item.Selected)
                {
                    acces += ChicklistAccess.SelectedIndex.ToString(item.Text);
                }

            }

            foreach (ListItem item in CarlistWaranty.Items)
            {

                year = Convert.ToDecimal(CarlistWaranty.SelectedItem.Text);
            }
            tel = txtPhone.Text;
            litInfo.Text = "Congratulation in obtain your new Honda" + modelc + "in" + city +
                "," + zipcod + "." + "your car cames with" + coint + "color and with" + acces + "Accessories." +
                "you choosed " + year + "years of warranty and our dealer will contact you by the phone number:" + tel;



        }
    }
}