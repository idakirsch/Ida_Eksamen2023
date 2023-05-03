using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class ClassOrderLine : ClassNotify
    {
        private ClassProduct _Product;
        private double _Quantity;

        public ClassOrderLine()
        {
            Product = new ClassProduct();
            Quantity = 0;
        }
        public ClassOrderLine(ClassOrderLine inOrderLine)
        {
            Product = inOrderLine.Product;
            Quantity = inOrderLine.Quantity;
        }

        public double Quantity
        {
            get { return _Quantity; }
            set
            {
                if (_Quantity != value)
                {
                    _Quantity = value;
                }
                Notify("Quantity");
            }
        }
        public ClassProduct Product
        {
            get { return _Product; }
            set
            {
                if (_Product != value)
                {
                    _Product = value;
                }
                Notify("Product");
            }
        }

    }
}