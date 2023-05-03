using BIZ;
using Repository;
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
    /// Interaction logic for UserControlCustomer.xaml
    /// </summary>
    public partial class UserControlCustomer : UserControl
    {
        ClassBIZ BIZ;
        Grid homeGrid;
        UserControlCustomerEdit UCEdit;

        public UserControlCustomer(ClassBIZ inBIZ, Grid inHomeGrid)
        {
            InitializeComponent();
            BIZ = inBIZ;
            homeGrid = inHomeGrid;
            UCEdit = new UserControlCustomerEdit(BIZ, homeGrid);
        }

        /// <summary>
        /// Used to add a new Customer
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void AddNewButton_Click(object sender, RoutedEventArgs e)
        {
            BIZ.editableCustomer = new ClassCustomer();
            homeGrid.Children.Add(UCEdit);
            BIZ.customerIsEnabled = false;
        }

        /// <summary>
        /// Used to Update a Customer
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void UpdateButton_Click(object sender, RoutedEventArgs e)
        {
            if (BIZ.selectedCustomer.Id != 0)
            {
                BIZ.editableCustomer = new ClassCustomer(BIZ.selectedCustomer);
                homeGrid.Children.Add(UCEdit);
                BIZ.customerIsEnabled = false;
            }
            else
            {
                // Message, Window title, Buttons available, Icon
                MessageBox.Show("Du skal vælge en kunde før du kan redigere.", "Manglende valg", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }

        /// <summary>
        /// Used to delete a Customer
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {

            if (BIZ.selectedCustomer.Id != 0)
            {
                if (MessageBox.Show("You are now gonna delete this Customer.\n\nClick Yes/Ja to delete.\nClick No/Nej to cancel.",
                       "Delete Customer", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                {
                    if (MessageBox.Show("Are you sure you want to delete this Customer.\n\nClick Yes/Ja to delete.\nClick No/Nej to cancel.",
                    "Delete Customer", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                    {
                        BIZ.DeleteCustomer();

                    }
                    else
                    {
                        homeGrid.Children.Remove(this);
                        BIZ.customerIsEnabled = true;
                    }
                }
                else
                {
                    homeGrid.Children.Remove(this);
                    BIZ.customerIsEnabled = true;
                } 
            }
        }
    }
}
