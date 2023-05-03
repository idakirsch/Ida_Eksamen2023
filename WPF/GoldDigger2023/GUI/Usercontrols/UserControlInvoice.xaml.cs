using BIZ;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GUI.Usercontrols
{
    /// <summary>
    /// Interaction logic for UserControlInvoice.xaml
    /// </summary>
    public partial class UserControlInvoice : UserControl
    {
        ClassBIZ BIZ;
        public UserControlInvoice(ClassBIZ inBIZ)
        {
            InitializeComponent();
            BIZ = inBIZ;
        }

        private void ButtonAddMetalToOrder_Click(object sender, RoutedEventArgs e)
        {

        }

        private void RemoveOrderlineFromOrder_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ButtonCompleteOrder_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
