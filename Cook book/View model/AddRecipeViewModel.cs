using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cook_book.Command;
using Cook_book.Model;
using System.Collections.ObjectModel;
using System.Windows.Input;
using System.Windows;
using Cook_book.View;
using System.Windows.Media.Imaging;

namespace Cook_book.View_model
{
    class AddRecipeViewModel : ViewModelBase
    {

        //public ObservableCollection<Recipe> RecipeList { get; set; }
        public Recipe Recipe { get; set; }
        public Ingredient Ingredient { get; set; }
        //private Ingredient Ingredient;
        public ObservableCollection<Ingredient> IngredientList { get; set; }
        public ObservableCollection<Product> ProductList { get; set; }
        public ObservableCollection<Measurement> MeasurementList { get; set; }
        public ObservableCollection<Category> CategoryList { get; set; }
        private CookBookDB cookBookDB = new CookBookDB();
        


        public CookBookDB CBDataBase
        {
            set
            {
                cookBookDB = value;
            }
            get
            {
                return this.cookBookDB;
            }
        }
        public AddRecipeViewModel()
        {



            if (cookBookDB.OpenConnection())
            {

                ProductList = new ObservableCollection<Product>(cookBookDB.SelectAllProducts());
                MeasurementList = new ObservableCollection<Measurement>(cookBookDB.SelectAllMeasurements());
                CategoryList = new ObservableCollection<Category>(cookBookDB.SelectDishCategories());
                IngredientList = new ObservableCollection<Ingredient>();
                Ingredient = new Ingredient();

            }
            else MessageBox.Show("Не получилось открыть соединение");
        }

        #region Команда Добавить

        private CBCommand addRecipeCommand;

        public ICommand AddRecipeCommand
        {
            get
            {
                if (addRecipeCommand == null)
                {
                    addRecipeCommand = new CBCommand(AddRecipe);
                }
                return addRecipeCommand;
            }
        }

        private void AddRecipe()
        {            

            Recipe.ingredients =IngredientList.ToList();
            cookBookDB.AddRecipe(Recipe);
            cookBookDB.AddIngredients(Recipe);
            CloseWindow.Invoke();
        }

        #endregion


         #region Команда Добавить ингредиент
   
        
        // private CBCommand addIngredientCommand;

        // public ICommand AddIngredientCommand
        // {
        //     get
        //     {
        //        if (addIngredientCommand == null)
        //        {
        //            addIngredientCommand = new CBCommand(AddIngredient);
        //        }
        //        return addIngredientCommand;
        //    }
        // }

        //private void AddIngredient()
        //{

        //    Ingredient = new Ingredient();
        //    IngredientList.Add(Ingredient);

        //}


        private CBCommand2 addIngredientCommand2;

        public ICommand AddIngredientCommand2
        {
            get
            {
                if (addIngredientCommand2 == null)
                {
                    addIngredientCommand2 = new CBCommand2(AddIngredient2);
                }
                return addIngredientCommand2;
            }
        }

        private void AddIngredient2(object param)
        {

            Ingredient = (Ingredient) param;
            IngredientList.Add(Ingredient);

        }

        #endregion


        #region Команда Добавить фото


        private CBCommand addPicCommand;

        public ICommand AddPicCommand
        {
            get
            {
                if (addPicCommand == null)
                {
                    addPicCommand = new CBCommand(AddPic);
                }
                return addPicCommand;
            }
        }

        private void AddPic()
        {
            Microsoft.Win32.OpenFileDialog dlg = new Microsoft.Win32.OpenFileDialog();
            dlg.FileName = "Image"; // Default file name
            dlg.DefaultExt = ".jpg"; // Default file extension
            dlg.Filter = "Image files (*.jpg, *.jpeg, *.jpe, *.jfif, *.png) | *.jpg; *.jpeg; *.jpe; *.jfif; *.png";// Filter files by extension

            // Show open file dialog box
            Nullable<bool> result = dlg.ShowDialog();

            // Process open file dialog box results
            if (result == true)
            {
                  Recipe.ImagePath = dlg.FileName;

            }
        }

        #endregion


        


        public Action CloseWindow { get; set; }


        

    }
}
