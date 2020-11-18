using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace demoSort
{
    class SelectionSort
    {
        static void Main(string[] args)
        {

            Console.WriteLine("Chuong trinh minh hoa Sap xep chon (Selection Sort) trong C#");
            Console.WriteLine("-------------------------------------------------------------");

            Selection_Sort selection = new Selection_Sort(10);
            selection.Sort();
            Console.ReadKey();
        }
    }

    class Selection_Sort
    {
        private int[] data;
        private static Random ngau_nhien = new Random();

        //tao mot mang bao gom 10 so ngau nhien
        public Selection_Sort(int size)
        {
            data = new int[size];
            for (int i = 0; i < size; i++)
            {
                data[i] = ngau_nhien.Next(20, 90);
            }
        }

        public void Sort()
        {
            Console.Write("\nSap xep cac phan tu mang theo tung buoc:\n\n");
            hien_thi_phan_tu_mang();
            int nho_nhat;
            for (int i = 0; i < data.Length - 1; i++)
            {
                nho_nhat = i;

                for (int index = i + 1; index < data.Length; index++)
                {
                    if (data[index] < data[nho_nhat])
                    {
                        nho_nhat = index;
                    }
                }
                trao_doi(i, nho_nhat);
                hien_thi_phan_tu_mang();
            }

        }

        public void trao_doi(int thu_nhat, int thu_hai)
        {
            int bien_tam = data[thu_nhat];
            data[thu_nhat] = data[thu_hai];
            data[thu_hai] = bien_tam;
        }

        public void hien_thi_phan_tu_mang()
        {
            foreach (var element in data)
            {
                Console.Write(element + " ");
            }
            Console.Write("\n\n");
        }
    }
}

