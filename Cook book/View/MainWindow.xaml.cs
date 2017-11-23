using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
using Cook_book.Model;

namespace Cook_book
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

        }

        private void CheckBox_Click(object sender, RoutedEventArgs e)
        {
            string skinDictPath = "Skins/BeigeSkin.xaml";
            if (checkBox1.IsChecked == true) skinDictPath = "Skins/GreenSkin.xaml";
            Uri skinDictionaryUri = new Uri(skinDictPath, UriKind.Relative);

            ResourceDictionary skinDict = Application.LoadComponent(skinDictionaryUri) as ResourceDictionary;
            Collection<ResourceDictionary> mergedDicts = base.Resources.MergedDictionaries;

            if (mergedDicts.Count > 0)
                mergedDicts.Clear();

            mergedDicts.Add(skinDict);
        }

     
    }
}
