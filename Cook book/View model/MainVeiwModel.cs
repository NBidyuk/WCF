using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using System.Windows.Input;
using Cook_book.Model;
using Cook_book.View;
using Cook_book.Command;
using System.Windows;

namespace Cook_book.View_model
{
    class MainVeiwModel: ViewModelBase
    {
        private CookBookDB cookBookDB = new CookBookDB();
        public ObservableCollection<Recipe> RecipeList { get; set; }

        private Recipe selectedRecipe = null;
        public Recipe SelectedRecipe
        {
            get { return selectedRecipe; }
            set
            {
                selectedRecipe = value;
                OnPropertyChanged("SelectedRecipe");

            }
        }

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
        public MainVeiwModel ()
        {


            if (cookBookDB.OpenConnection())
            {
                MessageBox.Show("Соединение открыто");
                RecipeList = new ObservableCollection<Recipe>(cookBookDB.SelectAll());


            }
            else
            {
                MessageBox.Show("Не получилось открыть соединение");
                CloseWindow.Invoke();
            }

        }

        #region Команда

        private CBCommand openWindowCommand;

        public ICommand OpenWindowCommand
        {
            get
            {
                if (openWindowCommand == null)
                {
                    openWindowCommand = new CBCommand(OpenAddItemWindow);
                }
                return openWindowCommand;
            }
        }

        private void OpenAddItemWindow()
        {
            AddRecipeViewModel dataContext = new AddRecipeViewModel();
            //dataContext.RecipeList= RecipeList;
            dataContext.Recipe = new Recipe();
            WindowOpen.OpenWindow(typeof(Cook_book.View.AddRecipe), dataContext);
        }

        #endregion

        #region Delete Recipe

        private CBCommand2 deleteRecipeCommand2;

        public ICommand DeleteRecipeCommand2
        {
            get
            {
                if (deleteRecipeCommand2 == null)
                {
                    deleteRecipeCommand2 = new CBCommand2(DeleteRecipe2);
                }
                return deleteRecipeCommand2;
            }
        }

        private void DeleteRecipe2(object param)
        {

            SelectedRecipe = (Recipe)param;
            cookBookDB.DeleteRecipe(SelectedRecipe.Name);
            RecipeList= new ObservableCollection<Recipe>(cookBookDB.SelectAll());
        }
        #endregion
        public Action CloseWindow { get; set; }
    }
}
