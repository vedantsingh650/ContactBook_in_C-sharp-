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
    /// Interaction logic for NewContactWindow.xaml
    /// </summary>
    public partial class NewContactWindow : Window
    {
        public NewContactWindow()
        {
            InitializeComponent();
            Save_Button.Click += Save_Button_Click;
        }

        private void Save_Button_Click(object sender, RoutedEventArgs e)
        {
            Contacts contact = new Contacts()
            {
                Email=emailBox.Text,
                Name=nameBox.Text,
                phone=phoneBox.Text
            };

            using(SQLiteConnection connection = new SQLiteConnection(App.databasePath))
            {
                connection.CreateTable<Contacts>(); //ignored if exist
                connection.Insert(contact); 
            }
           

            this.Close();
        }
    }
}
