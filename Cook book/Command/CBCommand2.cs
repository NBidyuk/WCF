using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;


namespace Cook_book.Command
{
    class CBCommand2: ICommand
    {


        #region Properties

        public Func<bool> CanExecuteDelegate { get; set; }
        public Action<object> ExecuteDelegate { get; set; }

        #endregion


        #region Constructor

        public CBCommand2(Action<object> action)
        {
            ExecuteDelegate = action;
        }

        public CBCommand2(Action<object> action, Func<bool> canExecute)
        {
            ExecuteDelegate = action;
            CanExecuteDelegate = canExecute;
        }

        #endregion



        #region ICommand Members

        public bool CanExecute(object parameter)
        {
            if (CanExecuteDelegate != null)
            {
                return CanExecuteDelegate();
            }
            return true;
        }

        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        public void Execute(object parameter)
        {
            if (ExecuteDelegate != null)
            {
                ExecuteDelegate(parameter);
            }
        }

        #endregion
    }
}

    

