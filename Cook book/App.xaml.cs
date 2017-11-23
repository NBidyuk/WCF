using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using Cook_book.Model;
using Cook_book.View_model;
using Cook_book.View;

namespace Cook_book
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {

        private void OnStartup(object sender, StartupEventArgs e)
        {
            MainWindow view = new MainWindow();
            MainVeiwModel viewModel = new MainVeiwModel();
            
            view.DataContext = viewModel; // положили ViewModel во View в качестве DataContext
            view.Show();
        }


    }
}
