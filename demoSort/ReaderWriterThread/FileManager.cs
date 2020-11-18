using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReaderWriterThread
{
  public class FileManager
    {
        public static int[] ReadFile(string fileName)
        {
            var text = File.ReadAllLines(fileName);
            var arr = new int[text.Length];
            for (int i = 0; i < text.Length; i++)
            {
                arr[i] = int.Parse(text[i]);
            }
            return arr;
        }
        public static bool WriteFile(string fileName,int []arr)
        {
            try
            {
                foreach (var item in arr)
                {
                    File.AppendAllText(fileName, item.ToString() + "\n");
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
