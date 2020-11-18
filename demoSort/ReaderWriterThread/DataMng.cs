using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReaderWriterThread
{
    public class DataMng
    {
        public DataMng()
        {
            Arr = null;
            FileNameOut = null;
            FileNameIn = null;
        }

        public DataMng(int[] arr) : this()
        {
            this.Arr = arr;
        }
        public DataMng(int[] arr, string fileNameIn) : this(arr)
        {
            this.FileNameIn = fileNameIn;
        }
        public DataMng(int[] arr, string fileNameIn, string fileNameOut) : this(arr, fileNameIn)
        {
            this.FileNameOut = fileNameOut;
        }
        public DataMng(string fileNameOut)
        {
            this.FileNameOut = fileNameOut;
        }
        public bool CheckStart()
        {
            if (Arr != null && FileNameIn != null && FileNameOut != null)
            {
                return true;
            }
            return false;
        }
        public int[] Arr { get; set; }
        public string FileNameIn { get; set; }
        public string FileNameOut { get; set; }
    }
}
