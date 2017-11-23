using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;

namespace Cook_book.Model
{
    public class Ingredient: Product
    {
        public int id{ get; set; }
       //public string name{ get; set; }
        public int  quantity{ get; set; }
        public Measurement measurement { get; set; }


        //public string Name
        //{
        //    get { return name; }
        //    set
        //    {
        //        name = value;
        //        OnPropertyChanged("Name");
        //    }
        //}

        public int Quantity
        {
            get { return quantity; }
            set
            {
                quantity = value;
                OnPropertyChanged("Quantity");
            }
        }

        public Measurement Measurement
        {
            get { return measurement; }
            set
            {
                measurement = value;
                OnPropertyChanged("Measurement");
            }
        }
        public Ingredient ()
        {

        }

        public Ingredient (string p, int w, Measurement m)
        {
            name = p;
            quantity= w;
            measurement = m;

        }

        /* public event PropertyChangedEventHandler PropertyChanged;

         protected void OnPropertyChanged(string propertyName)
         {
             if (PropertyChanged != null)
             {
                 PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
             }
         }*/

    

    }
}
