﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace demoSort
{
    class BubbleSort
    {
        public static void Main()
        {

            int[] a = { 3, 0, 2, 5, -1, 4, 1 };
            int t;

            Console.WriteLine("Chuong trinh minh hoa sap xep noi bot trong C#:");
            Console.WriteLine("-----------------------------------------------");

            Console.WriteLine("Mang ban dau: ");
            foreach (int aa in a)
                Console.Write(aa + " ");
            for (int p = 0; p <= a.Length - 2; p++)
            {
                for (int i = 0; i <= a.Length - 2; i++)
                {
                    if (a[i] > a[i + 1])
                    {
                        t = a[i + 1];
                        a[i + 1] = a[i];
                        a[i] = t;
                    }
                }
            }
            Console.WriteLine("\n" + "Mang da qua sap xep:");
            foreach (int aa in a)
                Console.Write(aa + " ");
            Console.Write("\n");

            Console.ReadKey();
        }
    }
}