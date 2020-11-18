using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace demoSort
{
    class InsertionSort
    {
        static void Main(string[] args)
        {

            Console.WriteLine("\nSap xep chen (Insertion Sort) trong C#:");
            Console.WriteLine("----------------------------------------");

            int[] numbers = new int[10] { 2, 5, -4, 11, 0, 18, 22, 67, 51, 6 };
            Console.WriteLine("\nMang cac phan tu ban dau:");
            PrintIntegerArray(numbers);
            Console.WriteLine("\nMang cac phan tu da qua sap xep:");
            PrintIntegerArray(Insertion_Sort(numbers));
            Console.WriteLine("\n");
            Console.ReadKey();
        }

        static int[] Insertion_Sort(int[] inputArray)
        {
            for (int i = 0; i < inputArray.Length - 1; i++)
            {
                for (int j = i + 1; j > 0; j--)
                {
                    if (inputArray[j - 1] > inputArray[j])
                    {
                        int temp = inputArray[j - 1];
                        inputArray[j - 1] = inputArray[j];
                        inputArray[j] = temp;
                    }
                }
            }
            return inputArray;
        }

        public static void PrintIntegerArray(int[] array)
        {
            foreach (int i in array)
            {
                Console.Write(i.ToString() + "  ");
            }
        }


        public static int[] InsertionSortByShift(int[] inputArray)
        {
            for (int i = 0; i < inputArray.Length - 1; i++)
            {
                int j;
                var insertionValue = inputArray[i];
                for (j = i; j > 0; j--)
                {
                    if (inputArray[j - 1] > insertionValue)
                    {
                        inputArray[j] = inputArray[j - 1];
                    }
                }
                inputArray[j] = insertionValue;
            }
            return inputArray;
        }

    }
}
