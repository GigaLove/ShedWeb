using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Timers;
using System.Threading;

namespace ShedWeb
{
    public partial class MainPage : System.Web.UI.Page
    {
        private ShedService.ShedServiceSoapClient client = new ShedService.ShedServiceSoapClient();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void getSensorData()
        {
            string data = client.getData();

            string[] rowData = data.Split('$');

            for (int i = 0; i < rowData.Length - 1; i++)
            {
                string[] columnData = rowData[i].Split('#');
                switch (columnData[2])
                {
                    case "T":
                        temperature.Text = columnData[3] + " ℃";
                        break;
                    case "P":
                        pressure.Text = columnData[3] + " kPa";
                        break;
                    case "D":
                        door.Text = columnData[3];
                        break;
                    case "H":
                        humidity.Text = columnData[3] + " %";
                        break;
                    case "S":
                        smoke.Text = columnData[3];
                        break;
                    default:
                        break;
                }
            }
            status.Text = rowData[rowData.Length - 1];
        }

        protected void getDataTimer_Tick(object sender, EventArgs e)
        {
            getSensorData();
            getExceptionData();
            this.getUserlog();
        }

        protected void ImageButton_Click(object sender, ImageClickEventArgs e)
        {
            client.sendCommand();
        }

        private void getExceptionData()
        {

            string data = client.getExceptionRecord();

            string[] rowData = data.Split('$');
            string[] columnData = rowData[0].Split('#');
            writeExceptionRecord(exceptionRecord1, columnData);

            columnData = rowData[1].Split('#');
            writeExceptionRecord(exceptionRecord2, columnData);

            columnData = rowData[2].Split('#');
            writeExceptionRecord(exceptionRecord3, columnData);

            columnData = rowData[3].Split('#');
            writeExceptionRecord(exceptionRecord4, columnData);

            columnData = rowData[4].Split('#');
            writeExceptionRecord(exceptionRecord5, columnData);
        }

        private void writeExceptionRecord(Label label, string[] columnData)
        {
            label.Text = "Time: " + columnData[7] + " <br/>Temperature: " + columnData[1] + "  &nbsp; &nbsp;&nbsp;&nbsp; Humidity: " + columnData[2] + " <br/>pressure: " + columnData[3]
                + "<br/>Door: " + columnData[4] + "&nbsp; &nbsp;&nbsp;&nbsp; Smog: " + columnData[5] + " <br/>Status: " + columnData[6];
        }

        private void getUserlog()
        {
            string data = client.getLogInfo();
            string[] rowData = data.Split('$');
            string[] columnData = rowData[0].Split('#');

            userLog00.Text = columnData[2];
            userLog01.Text = columnData[3];
            userLog02.Text = columnData[4];

            columnData = rowData[1].Split('#');

            userLog10.Text = columnData[2];
            userLog11.Text = columnData[3];
            userLog12.Text = columnData[4];

            columnData = rowData[2].Split('#');

            userLog20.Text = columnData[2];
            userLog21.Text = columnData[3];
            userLog22.Text = columnData[4];
        }


    }
}