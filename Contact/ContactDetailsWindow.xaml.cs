using Contact.Class;
using SQLite;
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
using System.Windows.Shapes;

namespace Contact
{
    /// <summary>
    /// Interaction logic for ContactDetailsWindow.xaml
    /// </summary>
    public partial class ContactDetailsWindow : Window
    {
        Contacts contact;
        public ContactDetailsWindow(Contacts contact)
        {
            InitializeComponent();

            this.contact = contact;
            nameTextBox.Text = contact.Name;
            phoneNumberTextBox.Text = contact.phone;
            emailTextBox.Text = contact.Email;
        }

        private void updateButton_Click(object sender, RoutedEventArgs e)
        {
            contact.Name = nameTextBox.Text;
            contact.phone = phoneNumberTextBox.Text;
            contact.Email = emailTextBox.Text;

            using (SQLiteConnection connection = new SQLiteConnection(App.databasePath))
            {
                connection.CreateTable<Contacts>();
                connection.Update(contact);
            }

            Close();
        }

        private void deleteButton_Click(object sender, RoutedEventArgs e)
        {
            using (SQLiteConnection connection = new SQLiteConnection(App.databasePath))
            {
                connection.CreateTable<Contacts>();
                connection.Delete(contact);
            }

            Close();
        }
    }
}
