using System;
using System.Windows;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cook_book.View_model;

namespace Cook_book
{
    class WindowOpen
    {
        public static void OpenWindow(Type windowType, object dataContext)
        {
            Window view = null;
            var constructor = windowType.GetConstructor(new Type[0]);
            if (constructor != null)
            {
                view = constructor.Invoke(new object[0]) as Window;
            }
            if (view != null)
            {
                view.DataContext = dataContext;
                if (view.DataContext is AddRecipeViewModel)
                    ((AddRecipeViewModel)view.DataContext).CloseWindow += view.Close;
            }
            view.ShowDialog();
        }

    }
}
