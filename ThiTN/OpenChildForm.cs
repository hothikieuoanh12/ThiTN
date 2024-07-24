using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
namespace ThiTN
{
    class OpenChildForm
    {
        public static Form activeForm = null;
        public static void openForm(Form childForm, Panel pnLoad)
        {
            if (activeForm != null) activeForm.Close();
            activeForm = childForm;
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            pnLoad.Controls.Add(childForm);
            pnLoad.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();



        }
    }
}
