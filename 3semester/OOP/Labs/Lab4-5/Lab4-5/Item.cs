﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab4_5
{
    internal abstract class Item
    {
        public double Price { get; }
        public double Weight { get; }

        public virtual void spoilt()
        {
            Console.WriteLine("spoilt method from Item class");
        } 
    }
}
