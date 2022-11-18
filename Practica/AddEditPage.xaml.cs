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

namespace Practica
{
    /// <summary>
    /// Логика взаимодействия для AddEditPage.xaml
    /// </summary>
    public partial class AddEditPage : Page
    {
       private Client _currentClient = new Client();

        public AddEditPage(Client SelectClient)
        {
            InitializeComponent();
            if (SelectClient != null) 
            {
                _currentClient = SelectClient;
            }
        
            DataContext = _currentClient;
            Combogender.ItemsSource = practicaEntities.GetContext().Gender.ToList();
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrEmpty(_currentClient.FirstName))
               
                errors.AppendLine("Укажите Имя");
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            if (_currentClient.ID == 0)
                practicaEntities.GetContext().Client.Add(_currentClient);

            try
            {
                practicaEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена");
                NavigationService.Navigate(new ClientView());
            }
            catch(Exception ex) 
            {
                MessageBox.Show(ex.Message.ToString());
            }
    }
    }
}
