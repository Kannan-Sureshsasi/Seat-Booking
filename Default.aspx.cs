using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Seat_Booking
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ToggleButtonState(Button clickedButton)
        {
            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                clickedButton.BackColor = Color.LimeGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                clickedButton.BackColor = Color.White;
            }

            CalculateTotalPrice();
        }

        private int CountSelectedSeats(List<Button> buttons)
        {
            int selectedCount = 0;

            foreach (Button btn in buttons)
            {
                if (btn.CssClass == "selected")
                {
                    selectedCount++;
                }
            }

            return selectedCount;
        }

        private void CalculateTotalPrice()
        {
            int silver = 150; //Change Rates If Needed
            int platinum = 250;
            int gold = 350;


            List<Button> set1Buttons = new List<Button>
                { btn1, btn2, btn3, btn4,btn5,bt6,btn7,bt8,btn9,btn10,btn11,btn12,btn13,btn14,btn15,btn16,btn17,btn18,btn19,btn20 }; // First 20 Buttons

            List<Button> set2Buttons = new List<Button>
                { btn21, btn22, btn23, btn24,btn25,bt26,btn27,btn28,btn29,btn30,btn31,btn32,btn34,btn35,btn36,btn37,btn38,btn39,btn40,
                btn41,btn42,btn43,btn44,btn45,btn46,btn47,btn48,btn49,btn50,btn51,btn52,btn53,btn54,btn55,btn56,btn57,btn58,btn59,btn60,
                btn61,btn62 }; //Add If Needed!

            List<Button> set3Buttons = new List<Button>
                { btn63,btn64,btn65,btn66,btn67,btn68,btn69,btn70,btn71,btn72,btn73,btn74,btn75,btn76,btn77,btn78,btn79,btn80,btn81,btn82,
                  btn83,btn84,btn85,btn86,btn87,btn88,btn89,btn90,btn91,btn92,btn93,btn94,btn95,btn96,btn97,btn98,btn99,btn100,btn101,btn102,
                  btn103,btn104,btn105,btn106,btn107,btn108,btn109,btn110,btn111,btn112,btn113,btn114,btn115,btn116,btn117,btn118,btn119,btn120,btn121,btn122, }; //You Can Add More IF Needed!

            int selectedCountSet1 = CountSelectedSeats(set1Buttons);
            int selectedCountSet2 = CountSelectedSeats(set2Buttons);
            int selectedCountSet3 = CountSelectedSeats(set3Buttons);

            int price = (selectedCountSet1 * silver) + (selectedCountSet2 * platinum) + (selectedCountSet3 * gold); //Calculating Sets * Quantity
            lblprice.Text = price.ToString();
        }

        protected void btnpay_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PageName.aspx"); // Rewrite Page Name To Redirect!
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn1);

            if (btn1.CssClass == "selected")
            {
                lblseat.Text += "A1,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("A1,", ""); //Repeat This To All Seat Buttons!
            }
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn2);

            if (btn2.CssClass == "selected")
            {
                lblseat.Text += "A2,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("A2,", "");
            }
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn3);
            if (btn3.CssClass == "selected")
            {
                lblseat.Text += "A3,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("A3,", "");
            }
        }

        protected void btn4_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn4);
            if (btn4.CssClass == "selected")
            {
                lblseat.Text += "A4,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("A4,", "");
            }
        }

        protected void btn5_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn5);
            if (btn5.CssClass == "selected")
            {
                lblseat.Text += "A5,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("A5,", "");
            }
        }

        protected void bt6_Click(object sender, EventArgs e)
        {
            ToggleButtonState(bt6);
            if (bt6.CssClass == "selected")
            {
                lblseat.Text += "A6,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("A6,", "");
            }
        }

        protected void btn7_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn7);
            if (btn7.CssClass == "selected")
            {
                lblseat.Text += "A7,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("A7,", "");
            }
        }

        protected void bt8_Click(object sender, EventArgs e)
        {
            ToggleButtonState(bt8);
            if (bt8.CssClass == "selected")
            {
                lblseat.Text += "A8,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("A8,", "");
            }
        }

        protected void btn9_Click(object sender, EventArgs e)
        {
            //Use If Needed Now Solded This!
        }

        protected void btn10_Click(object sender, EventArgs e)
        {
            //Use If Needed Now Solded This!
        }

        protected void btn11_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn11);
            if (btn11.CssClass == "selected")
            {
                lblseat.Text += "A11,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("A11,", "");
            }
        }

        protected void btn12_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn12);
            if (btn12.CssClass == "selected")
            {
                lblseat.Text += "A12,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("A12,", "");
            }
        }

        protected void btn13_Click(object sender, EventArgs e)
        {
            //Use If Needed Now Solded This!
        }

        protected void btn14_Click(object sender, EventArgs e)
        {
            //Use If Needed Now Solded This!
        }

        protected void btn15_Click(object sender, EventArgs e)
        {
            //Use If Needed Now Solded This!
        }

        protected void btn16_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn16);
            if (btn16.CssClass == "selected")
            {
                lblseat.Text += "A16,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("A16,", "");
            }
        }

        protected void btn17_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn17);
            if (btn17.CssClass == "selected")
            {
                lblseat.Text += "A17,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("A17,", "");
            }
        }

        protected void btn18_Click(object sender, EventArgs e)
        {
            //Use If Needed Now Solded This!
        }

        protected void btn19_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn19);
            if (btn19.CssClass == "selected")
            {
                lblseat.Text += "A19,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("A19,", "");
            }
        }

        protected void btn20_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn20);
            if (btn20.CssClass == "selected")
            {
                lblseat.Text += "A20,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("A20,", "");
            }
        }

        protected void btn21_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn21);
            if (btn21.CssClass == "selected")
            {
                lblseat.Text += "B1,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B1,", "");
            }
        }

        protected void btn22_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn22);
            if (btn22.CssClass == "selected")
            {
                lblseat.Text += "B2,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B2,", "");
            }
        }

        protected void btn23_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn23);
            if (btn23.CssClass == "selected")
            {
                lblseat.Text += "B3,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B3,", "");
            }
        }

        protected void btn24_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn24);
            if (btn24.CssClass == "selected")
            {
                lblseat.Text += "B4,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B4,", "");
            }
        }

        protected void btn25_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn25);
            if (btn25.CssClass == "selected")
            {
                lblseat.Text += "B5,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B5,", "");
            }
        }

        protected void bt26_Click(object sender, EventArgs e)
        {
            ToggleButtonState(bt26);
            if (bt26.CssClass == "selected")
            {
                lblseat.Text += "B6,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B6,", "");
            }
        }

        protected void btn27_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn27);
            if (btn27.CssClass == "selected")
            {
                lblseat.Text += "B7,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B7,", "");
            }
        }

        protected void btn28_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn28);
            if (btn28.CssClass == "selected")
            {
                lblseat.Text += "B8,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B8,", "");
            }
        }

        protected void btn29_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn29);
            if (btn29.CssClass == "selected")
            {
                lblseat.Text += "B9,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B9,", "");
            }
        }

        protected void btn30_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn30);
            if (btn30.CssClass == "selected")
            {
                lblseat.Text += "B10,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B10,", "");
            }
        }

        protected void btn31_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn31);
            if (btn31.CssClass == "selected")
            {
                lblseat.Text += "B11,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B11,", "");
            }
        }

        protected void btn32_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn32);
            if (btn32.CssClass == "selected")
            {
                lblseat.Text += "B12,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B12,", "");
            }
        }

        protected void btn33_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn33);
            if (btn33.CssClass == "selected")
            {
                lblseat.Text += "B13,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B13,", "");
            }
        }

        protected void btn34_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn34);
            if (btn34.CssClass == "selected")
            {
                lblseat.Text += "B14,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B14,", "");
            }
        }

        protected void btn35_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn35);
            if (btn35.CssClass == "selected")
            {
                lblseat.Text += "B15,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B15,", "");
            }
        }

        protected void btn36_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn36);
            if (btn36.CssClass == "selected")
            {
                lblseat.Text += "B16,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B16,", "");
            }
        }

        protected void btn37_Click(object sender, EventArgs e)
        {
            //Use If Needed Now Solded This!
        }

        protected void btn38_Click(object sender, EventArgs e)
        {
            //Use If Needed Now Solded This!
        }

        protected void btn39_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn39);
            if (btn39.CssClass == "selected")
            {
                lblseat.Text += "B19,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B19,", "");
            }
        }

        protected void btn40_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn40);
            if (btn40.CssClass == "selected")
            {
                lblseat.Text += "B20,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B20,", "");
            }
        }

        protected void btn41_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn41);
            if (btn41.CssClass == "selected")
            {
                lblseat.Text += "B21,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B21,", "");
            }
        }

        protected void btn42_Click(object sender, EventArgs e)
        {
            //Use If Needed Now Solded This!
        }

        protected void btn43_Click(object sender, EventArgs e)
        {
            //Use If Needed Now Solded This!
        }

        protected void btn44_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn44);
            if (btn44.CssClass == "selected")
            {
                lblseat.Text += "B24,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B24,", "");
            }
        }

        protected void btn45_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn45);
            if (btn45.CssClass == "selected")
            {
                lblseat.Text += "B25,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B25,", "");
            }
        }

        protected void btn46_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn46);
            if (btn46.CssClass == "selected")
            {
                lblseat.Text += "B26,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B26,", "");
            }
        }

        protected void btn47_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn47);
            if (btn47.CssClass == "selected")
            {
                lblseat.Text += "B27,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B27,", "");
            }
        }

        protected void btn48_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn48);
            if (btn48.CssClass == "selected")
            {
                lblseat.Text += "B28,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B28,", "");
            }
        }

        protected void btn49_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn49);
            if (btn49.CssClass == "selected")
            {
                lblseat.Text += "B29,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B29,", "");
            }
        }

        protected void btn50_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn50);
            if (btn50.CssClass == "selected")
            {
                lblseat.Text += "B30,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B30,", "");
            }
        }

        protected void btn51_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn51);
            if (btn51.CssClass == "selected")
            {
                lblseat.Text += "B31,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B31,", "");
            }
        }

        protected void btn52_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn52);
            if (btn52.CssClass == "selected")
            {
                lblseat.Text += "B32,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B32,", "");
            }
        }

        protected void btn53_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn53);
            if (btn53.CssClass == "selected")
            {
                lblseat.Text += "B33,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B33,", "");
            }
        }

        protected void btn54_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn54);
            if (btn54.CssClass == "selected")
            {
                lblseat.Text += "B34,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B34,", "");
            }
        }

        protected void btn55_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn55);
            if (btn55.CssClass == "selected")
            {
                lblseat.Text += "B35,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B35,", "");
            }
        }

        protected void btn56_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn56);
            if (btn56.CssClass == "selected")
            {
                lblseat.Text += "B36,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B36,", "");
            }
        }

        protected void btn57_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn57);
            if (btn57.CssClass == "selected")
            {
                lblseat.Text += "B37,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B37,", "");
            }
        }

        protected void btn58_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn58);
            if (btn58.CssClass == "selected")
            {
                lblseat.Text += "B38,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B38,", "");
            }
        }

        protected void btn59_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn59);
            if (btn59.CssClass == "selected")
            {
                lblseat.Text += "B39,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B39,", "");
            }
        }

        protected void btn60_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn60);
            if (btn60.CssClass == "selected")
            {
                lblseat.Text += "B40,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B40,", "");
            }
        }

        protected void btn61_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn61);
            if (btn61.CssClass == "selected")
            {
                lblseat.Text += "B41,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B41,", "");
            }
        }

        protected void btn62_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn62);
            if (btn62.CssClass == "selected")
            {
                lblseat.Text += "B42,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("B42,", "");
            }
        }

        protected void btn63_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn63);
            if (btn63.CssClass == "selected")
            {
                lblseat.Text += "C1,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C1,", "");
            }
        }

        protected void btn64_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn64);
            if (btn64.CssClass == "selected")
            {
                lblseat.Text += "C2,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C2,", "");
            }
        }

        protected void btn65_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn65);
            if (btn65.CssClass == "selected")
            {
                lblseat.Text += "C3,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C3,", "");
            }
        }

        protected void btn66_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn66);
            if (btn66.CssClass == "selected")
            {
                lblseat.Text += "C4,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C4,", "");
            }
        }

        protected void btn67_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn67);
            if (btn66.CssClass == "selected")
            {
                lblseat.Text += "C5,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C5,", "");
            }
        }

        protected void btn68_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn68);
            if (btn68.CssClass == "selected")
            {
                lblseat.Text += "C6,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C6,", "");
            }
        }

        protected void btn69_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn69);
            if (btn69.CssClass == "selected")
            {
                lblseat.Text += "C7,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C7,", "");
            }
        }

        protected void btn70_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn70);
            if (btn70.CssClass == "selected")
            {
                lblseat.Text += "C8,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C8,", "");
            }
        }

        protected void btn71_Click(object sender, EventArgs e)
        {
            //Use If Needed Now Solded This!
        }

        protected void btn72_Click(object sender, EventArgs e)
        {
            //Use If Needed Now Solded This!
        }

        protected void btn73_Click(object sender, EventArgs e)
        {
            //Use If Needed Now Solded This!
        }

        protected void btn74_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn74);
            if (btn74.CssClass == "selected")
            {
                lblseat.Text += "C12,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C12,", "");
            }
        }

        protected void btn75_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn75);
            if (btn75.CssClass == "selected")
            {
                lblseat.Text += "C13,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C13,", "");
            }
        }

        protected void btn76_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn76);
            if (btn76.CssClass == "selected")
            {
                lblseat.Text += "C14,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C14,", "");
            }
        }

        protected void btn77_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn77);
            if (btn77.CssClass == "selected")
            {
                lblseat.Text += "C15,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C15,", "");
            }
        }

        protected void btn78_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn78);
            if (btn78.CssClass == "selected")
            {
                lblseat.Text += "C16,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C16,", "");
            }
        }

        protected void btn79_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn79);
            if (btn79.CssClass == "selected")
            {
                lblseat.Text += "C17,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C17,", "");
            }
        }

        protected void btn80_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn80);
            if (btn80.CssClass == "selected")
            {
                lblseat.Text += "C18,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C18,", "");
            }
        }

        protected void btn81_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn81);
            if (btn81.CssClass == "selected")
            {
                lblseat.Text += "C19,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C19,", "");
            }
        }

        protected void btn82_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn82);
            if (btn82.CssClass == "selected")
            {
                lblseat.Text += "C20,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C20,", "");
            }
        }

        protected void btn83_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn83);
            if (btn83.CssClass == "selected")
            {
                lblseat.Text += "C21,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C21,", "");
            }
        }

        protected void btn84_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn84);
            if (btn84.CssClass == "selected")
            {
                lblseat.Text += "C22,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C22,", "");
            }
        }

        protected void btn85_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn85);
            if (btn85.CssClass == "selected")
            {
                lblseat.Text += "C23,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C23,", "");
            }
        }

        protected void btn86_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn86);
            if (btn86.CssClass == "selected")
            {
                lblseat.Text += "C24,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C24,", "");
            }
        }

        protected void btn87_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn87);
            if (btn87.CssClass == "selected")
            {
                lblseat.Text += "C25,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C25,", "");
            }
        }

        protected void btn88_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn88);
            if (btn88.CssClass == "selected")
            {
                lblseat.Text += "C26,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C26,", "");
            }
        }

        protected void btn89_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn89);
            if (btn89.CssClass == "selected")
            {
                lblseat.Text += "C27,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C27,", "");
            }
        }

        protected void btn90_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn90);
            if (btn90.CssClass == "selected")
            {
                lblseat.Text += "C28,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C28,", "");
            }
        }

        protected void btn91_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn91);
            if (btn91.CssClass == "selected")
            {
                lblseat.Text += "C29,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C29,", "");
            }
        }

        protected void btn92_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn92);
            if (btn92.CssClass == "selected")
            {
                lblseat.Text += "C30,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C30,", "");
            }
        }

        protected void btn93_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn93);
            if (btn93.CssClass == "selected")
            {
                lblseat.Text += "C31,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C31,", "");
            }
        }

        protected void btn94_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn94);
            if (btn94.CssClass == "selected")
            {
                lblseat.Text += "C32,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C32,", "");
            }
        }

        protected void btn95_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn95);
            if (btn95.CssClass == "selected")
            {
                lblseat.Text += "C33,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C33,", "");
            }
        }

        protected void btn96_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn96);
            if (btn96.CssClass == "selected")
            {
                lblseat.Text += "C34,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C34,", "");
            }
        }

        protected void btn97_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn97);
            if (btn97.CssClass == "selected")
            {
                lblseat.Text += "C35,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C35,", "");
            }
        }

        protected void btn98_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn98);
            if (btn98.CssClass == "selected")
            {
                lblseat.Text += "C36,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C36,", "");
            }
        }

        protected void btn99_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn99);
            if (btn99.CssClass == "selected")
            {
                lblseat.Text += "C37,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C37,", "");
            }
        }

        protected void btn100_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn100);
            if (btn100.CssClass == "selected")
            {
                lblseat.Text += "C38,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C38,", "");
            }
        }

        protected void btn101_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn101);
            if (btn101.CssClass == "selected")
            {
                lblseat.Text += "C39,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C39,", "");
            }
        }

        protected void btn102_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn102);
            if (btn102.CssClass == "selected")
            {
                lblseat.Text += "C40,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C40,", "");
            }
        }

        protected void btn103_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn103);
            if (btn103.CssClass == "selected")
            {
                lblseat.Text += "C41,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C41,", "");
            }
        }

        protected void btn104_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn104);
            if (btn104.CssClass == "selected")
            {
                lblseat.Text += "C42,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C42,", "");
            }
        }

        protected void btn105_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn105);
            if (btn105.CssClass == "selected")
            {
                lblseat.Text += "C43,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C43,", "");
            }
        }

        protected void btn106_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn106);
            if (btn106.CssClass == "selected")
            {
                lblseat.Text += "C44,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C44,", "");
            }
        }

        protected void btn107_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn107);
            if (btn107.CssClass == "selected")
            {
                lblseat.Text += "C45,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C45,", "");
            }
        }

        protected void btn108_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn108);
            if (btn108.CssClass == "selected")
            {
                lblseat.Text += "C46,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C46,", "");
            }
        }

        protected void btn109_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn109);
            if (btn109.CssClass == "selected")
            {
                lblseat.Text += "C47,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C47,", "");
            }
        }

        protected void btn110_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn110);
            if (btn110.CssClass == "selected")
            {
                lblseat.Text += "C48,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C48,", "");
            }
        }

        protected void btn111_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn111);
            if (btn111.CssClass == "selected")
            {
                lblseat.Text += "C49,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C49,", "");
            }
        }

        protected void btn112_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn112);
            if (btn112.CssClass == "selected")
            {
                lblseat.Text += "C50,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C50,", "");
            }
        }

        protected void btn113_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn113);
            if (btn113.CssClass == "selected")
            {
                lblseat.Text += "C51,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C51,", "");
            }
        }

        protected void btn114_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn114);
            if (btn114.CssClass == "selected")
            {
                lblseat.Text += "C52,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C52,", "");
            }
        }

        protected void btn115_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn115);
            if (btn115.CssClass == "selected")
            {
                lblseat.Text += "C53,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C53,", "");
            }
        }

        protected void btn116_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn116);
            if (btn116.CssClass == "selected")
            {
                lblseat.Text += "C54,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C54,", "");
            }
        }

        protected void btn117_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn117);
            if (btn117.CssClass == "selected")
            {
                lblseat.Text += "C55,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C55,", "");
            }
        }

        protected void btn118_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn118);
            if (btn118.CssClass == "selected")
            {
                lblseat.Text += "C56,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C56,", "");
            }
        }

        protected void btn119_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn119);
            if (btn119.CssClass == "selected")
            {
                lblseat.Text += "C57,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C57,", "");
            }
        }

        protected void btn120_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn120);
            if (btn120.CssClass == "selected")
            {
                lblseat.Text += "C58,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C58,", "");
            }
        }

        protected void btn121_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn121);
            if (btn121.CssClass == "selected")
            {
                lblseat.Text += "C59,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C59,", "");
            }
        }

        protected void btn122_Click(object sender, EventArgs e)
        {
            ToggleButtonState(btn122);
            if (btn122.CssClass == "selected")
            {
                lblseat.Text += "C60,";
            }
            else
            {
                lblseat.Text = lblseat.Text.Replace("C60,", "");
            }
        }

        protected void MovieDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void showPopupButton_Click(object sender, EventArgs e)
        {
            popupPanel.Visible = true;
        }

        protected void closeButton_Click(object sender, EventArgs e)
        {
            popupPanel.Visible = false;
        }
    }
}