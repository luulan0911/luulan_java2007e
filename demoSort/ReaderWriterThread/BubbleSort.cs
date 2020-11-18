using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace ReaderWriterThread
{
    public class BubbleSort:InterfaceThread
    {

        public BubbleSort(string fileNameOutput, int[] arr)
        {
            this.FileNameOutput = fileNameOutput;
            this.Arr = arr;
        }

        public BubbleSort()
        {
        }

        public void Sort()
        {
            for (int p = 0; p <= Arr.Length - 2; p++)
            {
                for (int i = 0; i <= Arr.Length - 2; i++)
                {
                    if (Arr[i] > Arr[i + 1])
                    {
                        int t = Arr[i + 1];
                        Arr[i + 1] = Arr[i];
                        Arr[i] = t;
                    }
                }
            }
            FileManager.WriteFile(FileNameOutput, Arr);
        }
        public new void Start()
        {
            this.ThreadMain = new Thread(Sort);
            ThreadMain.Name = "BubbleSort";
            ThreadMain.Start();
        }
        public new bool CheckComplete(int time=500)
        {
            return ThreadMain.Join(time);
        }
        public string FileNameOutput { get; set; }
        public int[] Arr { get; set; }
        public Thread ThreadMain { get;  set; }
    }
}
