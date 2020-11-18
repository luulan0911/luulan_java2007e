using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReaderWriterThread
{
  public class InterfaceThread
    {
        public void Start() { }
        public bool CheckComplete(int time = 500)
        {
            return false;
        }
    }
}
