using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Cook_book.Model
{
    public class Recipe : INotifyPropertyChanged
    {
        public int id { get; set; }
        public string name { get; set; }
        public string content { get; set; }
        public Category category { get; set; }
        public string imagePath { get; set; }
        public List<Ingredient> ingredients { get; set; }


        public Recipe()
        {
            imagePath = "";
        }


        public Recipe (string n, string c, Category cat, string image, List<Ingredient> list )
        {
            name = n;
            content = c;
            category = cat;
            imagePath = image;
            ingredients = list;
            ingredients = new List<Ingredient>();
        }

        public string Name
        {
            get { return name; }
            set
            {
               name = value;
                OnPropertyChanged("Name");
            }
        }

        public string Content
        {
            get { return content; }
            set
            {
               content = value;
                OnPropertyChanged("Content");
            }
        }

        public Category Category
        {
            get { return category; }
            set
            {
                category = value;
                OnPropertyChanged("Category");
            }
        }

        public string ImagePath
        {
            get { return imagePath; }
            set
            {
                imagePath = value;
                OnPropertyChanged("ImagePath");
            }
        }
        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }

    }
}
