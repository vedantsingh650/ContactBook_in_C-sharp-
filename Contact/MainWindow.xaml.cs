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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Contact
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        List<Contacts> contacts;
        public MainWindow()
        {
            contacts = new List<Contacts>();
            InitializeComponent();
            
            ReadDatabase();
        }

        private void Newwindow_click(Object sender, RoutedEventArgs e)
        {
        
            NewContactWindow newContactWindow = new NewContactWindow();
            newContactWindow.ShowDialog();
            ReadDatabase();

        }

        void ReadDatabase()
        {
            
            using (SQLiteConnection connection = new SQLiteConnection(App.databasePath))
            {
                connection.CreateTable<Contacts>(); //ignored if exist
                contacts = (connection.Table<Contacts>().ToList()).OrderBy(c => c.Name).ToList();
            }
            if (contacts != null)
            {
                contactListview.ItemsSource = contacts;
            }

        }

       

        private void Search_Boxchanged(object sender, TextChangedEventArgs e)
        {
            TextBox searchBox = sender as TextBox;
            var filterl = contacts.Where(c => c.Name.ToLower().Contains(searchBox.Text.ToLower())).ToList();

            contactListview.ItemsSource = filterl;
        }

        private void contactListSelectionChange(object sender, SelectionChangedEventArgs e)
        {
            Contacts selectedcont = (Contacts)contactListview.SelectedItem;
            if (selectedcont != null)
            {
                ContactDetailsWindow contactDetailsWindow = new ContactDetailsWindow(selectedcont);
                contactDetailsWindow.ShowDialog();
                ReadDatabase();
            }
        }
    }
}
