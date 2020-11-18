using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ReaderWriterThread
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            checkBoxInsert.Visible = false;
            checkBoxMerge.Visible = false;
            checkBoxQuick.Visible = false;
            checkBoxBubble.Visible = false;
            checkBoxSelection.Visible = false;
            btnStart.Visible = false;
            data = new DataMng();
        }
        BubbleSort bb;
        private void ShowBtnStart()
        {
            if (data.CheckStart())
            {
                checkBoxInsert.Visible = true;
                checkBoxMerge.Visible = true;
                checkBoxQuick.Visible = true;
                checkBoxBubble.Visible = true;
                checkBoxSelection.Visible = true;
                btnStart.Visible = false;
                btnStart.Visible = true;
            }
        }
        private string GetFileName()
        {
            var open = new OpenFileDialog();
            open.ShowDialog();
            return open.FileName;
        }
        DataMng data;
        private Thread thread_;

        private void txtInput_Click(object sender, EventArgs e)
        {
            var fileName = GetFileName();
            var arr = FileManager.ReadFile(fileName);
            data.Arr = arr;
            data.FileNameIn = fileName;
            txtFileInput.Text = fileName;
            ShowBtnStart();
        }

        private void btnOutput_Click(object sender, EventArgs e)
        {
            var fileName = GetFileName();
            data.FileNameOut = fileName;
            txtFileOutPut.Text = fileName;
            ShowBtnStart();
        }
        private void Check()
        {
            while (true)
            {
                try
                {
                    if (bb.CheckComplete())
                    {
                        MessageBox.Show("xong");
                        return;
                    }
                    MessageBox.Show("Chuaw xong");
                    Thread.Sleep(500);
                }
                catch
                {

                }

            }
        }
        private void btnStart_Click(object sender, EventArgs e)
        {
            if (checkBoxInsert.Checked)
            {
                bb = new BubbleSort();
                bb.Arr = data.Arr;
                bb.FileNameOutput = data.FileNameOut;
                bb.Start();
                thread_ = new Thread(Check);
                thread_.Start();
            }
            
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            //thread_.Interrupt();
            //thread_.Resume();
        }
    }
}
