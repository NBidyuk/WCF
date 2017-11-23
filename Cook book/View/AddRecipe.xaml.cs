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

namespace Cook_book.View
{
    /// <summary>
    /// Interaction logic for AddRecipe.xaml
    /// </summary>
    public partial class AddRecipe : Window
    {
        public AddRecipe()
        {
            InitializeComponent();
        }




        //private void AddPic_Click(object sender, RoutedEventArgs e)
        //{
        //    Microsoft.Win32.OpenFileDialog dlg = new Microsoft.Win32.OpenFileDialog();
        //    dlg.FileName = "Image"; // Default file name
        //    dlg.DefaultExt = ".jpg"; // Default file extension
        //    dlg.Filter = "Image files (*.jpg, *.jpeg, *.jpe, *.jfif, *.png) | *.jpg; *.jpeg; *.jpe; *.jfif; *.png";// Filter files by extension

        //    // Show open file dialog box
        //    Nullable<bool> result = dlg.ShowDialog();

        //    // Process open file dialog box results
        //    if (result == true)
        //    {
        //        // Open document
        //        string stringPath = dlg.FileName;
        //        Uri imageUri = new Uri(stringPath, UriKind.Absolute);
        //        BitmapImage imageBitmap = new BitmapImage(imageUri);
        //        MyImage.Source = imageBitmap;
        //        IPath.Text = stringPath;
        //    }

        //}



    }
}
