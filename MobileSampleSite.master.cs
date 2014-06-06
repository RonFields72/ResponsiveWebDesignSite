using System;
using System.Linq;
using System.Web.UI.WebControls;
using Telerik.Web.Device.Detection;
using Telerik.Web.UI;

public partial class MobileSampleSite : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        currentYear.Text = DateTime.Now.Year.ToString();

        var screenSize = Detector.GetScreenSize(Request.UserAgent);

        switch (screenSize)
        {
            case DeviceScreenSize.Medium:
            case DeviceScreenSize.Small:
                RadMenuHeader.Visible = true;
                RadMenuHeader.DataBound += RadMenuHeader_DataBound;

                RadMenuMain.Visible = false;
                RadSocialShareHeader.Visible = false;
                RadSocialShareBottom.Visible = true;

                RadButtonFeedback.Visible = false;
                RadButtonTryNow.Visible = false;
                RadButtonBuyNow.Visible = false;
                break;
        }
    }

    void RadMenuHeader_DataBound(object sender, EventArgs e)
    {
        RadMenuHeader.Items.Add(new RadMenuItem() { Text="GIVE FEEDBACK", NavigateUrl="http://feedback.telerik.com/Project/108" });
    }
}
