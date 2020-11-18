namespace ReaderWriterThread
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtInput = new System.Windows.Forms.Button();
            this.btnOutput = new System.Windows.Forms.Button();
            this.checkBoxInsert = new System.Windows.Forms.CheckBox();
            this.checkBoxSelection = new System.Windows.Forms.CheckBox();
            this.checkBoxQuick = new System.Windows.Forms.CheckBox();
            this.checkBoxMerge = new System.Windows.Forms.CheckBox();
            this.checkBoxBubble = new System.Windows.Forms.CheckBox();
            this.btnStart = new System.Windows.Forms.Button();
            this.txtFileInput = new System.Windows.Forms.TextBox();
            this.txtFileOutPut = new System.Windows.Forms.TextBox();
            this.btnClose = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // txtInput
            // 
            this.txtInput.Location = new System.Drawing.Point(95, 33);
            this.txtInput.Name = "txtInput";
            this.txtInput.Size = new System.Drawing.Size(102, 52);
            this.txtInput.TabIndex = 0;
            this.txtInput.Text = "Open file input";
            this.txtInput.UseVisualStyleBackColor = true;
            this.txtInput.Click += new System.EventHandler(this.txtInput_Click);
            // 
            // btnOutput
            // 
            this.btnOutput.Location = new System.Drawing.Point(343, 33);
            this.btnOutput.Name = "btnOutput";
            this.btnOutput.Size = new System.Drawing.Size(102, 52);
            this.btnOutput.TabIndex = 1;
            this.btnOutput.Text = "Open file output";
            this.btnOutput.UseVisualStyleBackColor = true;
            this.btnOutput.Click += new System.EventHandler(this.btnOutput_Click);
            // 
            // checkBoxInsert
            // 
            this.checkBoxInsert.AutoSize = true;
            this.checkBoxInsert.Location = new System.Drawing.Point(15, 157);
            this.checkBoxInsert.Name = "checkBoxInsert";
            this.checkBoxInsert.Size = new System.Drawing.Size(110, 21);
            this.checkBoxInsert.TabIndex = 3;
            this.checkBoxInsert.Text = "InsertionSort";
            this.checkBoxInsert.UseVisualStyleBackColor = true;
            // 
            // checkBoxSelection
            // 
            this.checkBoxSelection.AutoSize = true;
            this.checkBoxSelection.Location = new System.Drawing.Point(131, 157);
            this.checkBoxSelection.Name = "checkBoxSelection";
            this.checkBoxSelection.Size = new System.Drawing.Size(114, 21);
            this.checkBoxSelection.TabIndex = 4;
            this.checkBoxSelection.Text = "SelectionSort";
            this.checkBoxSelection.UseVisualStyleBackColor = true;
            // 
            // checkBoxQuick
            // 
            this.checkBoxQuick.AutoSize = true;
            this.checkBoxQuick.Location = new System.Drawing.Point(353, 157);
            this.checkBoxQuick.Name = "checkBoxQuick";
            this.checkBoxQuick.Size = new System.Drawing.Size(92, 21);
            this.checkBoxQuick.TabIndex = 6;
            this.checkBoxQuick.Text = "QuickSort";
            this.checkBoxQuick.UseVisualStyleBackColor = true;
            // 
            // checkBoxMerge
            // 
            this.checkBoxMerge.AutoSize = true;
            this.checkBoxMerge.Location = new System.Drawing.Point(251, 157);
            this.checkBoxMerge.Name = "checkBoxMerge";
            this.checkBoxMerge.Size = new System.Drawing.Size(96, 21);
            this.checkBoxMerge.TabIndex = 5;
            this.checkBoxMerge.Text = "MergeSort";
            this.checkBoxMerge.UseVisualStyleBackColor = true;
            // 
            // checkBoxBubble
            // 
            this.checkBoxBubble.AutoSize = true;
            this.checkBoxBubble.Location = new System.Drawing.Point(465, 157);
            this.checkBoxBubble.Name = "checkBoxBubble";
            this.checkBoxBubble.Size = new System.Drawing.Size(100, 21);
            this.checkBoxBubble.TabIndex = 7;
            this.checkBoxBubble.Text = "BubbleSort";
            this.checkBoxBubble.UseVisualStyleBackColor = true;
            // 
            // btnStart
            // 
            this.btnStart.Location = new System.Drawing.Point(143, 225);
            this.btnStart.Name = "btnStart";
            this.btnStart.Size = new System.Drawing.Size(102, 52);
            this.btnStart.TabIndex = 8;
            this.btnStart.Text = "Start";
            this.btnStart.UseVisualStyleBackColor = true;
            this.btnStart.Click += new System.EventHandler(this.btnStart_Click);
            // 
            // txtFileInput
            // 
            this.txtFileInput.Location = new System.Drawing.Point(77, 108);
            this.txtFileInput.Name = "txtFileInput";
            this.txtFileInput.ReadOnly = true;
            this.txtFileInput.Size = new System.Drawing.Size(168, 22);
            this.txtFileInput.TabIndex = 9;
            // 
            // txtFileOutPut
            // 
            this.txtFileOutPut.Location = new System.Drawing.Point(308, 108);
            this.txtFileOutPut.Name = "txtFileOutPut";
            this.txtFileOutPut.ReadOnly = true;
            this.txtFileOutPut.Size = new System.Drawing.Size(170, 22);
            this.txtFileOutPut.TabIndex = 10;
            // 
            // btnClose
            // 
            this.btnClose.Location = new System.Drawing.Point(308, 225);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(102, 52);
            this.btnClose.TabIndex = 11;
            this.btnClose.Text = "Stop";
            this.btnClose.UseVisualStyleBackColor = true;
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(577, 365);
            this.Controls.Add(this.btnClose);
            this.Controls.Add(this.txtFileOutPut);
            this.Controls.Add(this.txtFileInput);
            this.Controls.Add(this.btnStart);
            this.Controls.Add(this.checkBoxBubble);
            this.Controls.Add(this.checkBoxQuick);
            this.Controls.Add(this.checkBoxMerge);
            this.Controls.Add(this.checkBoxSelection);
            this.Controls.Add(this.checkBoxInsert);
            this.Controls.Add(this.btnOutput);
            this.Controls.Add(this.txtInput);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button txtInput;
        private System.Windows.Forms.Button btnOutput;
        private System.Windows.Forms.CheckBox checkBoxInsert;
        private System.Windows.Forms.CheckBox checkBoxSelection;
        private System.Windows.Forms.CheckBox checkBoxQuick;
        private System.Windows.Forms.CheckBox checkBoxMerge;
        private System.Windows.Forms.CheckBox checkBoxBubble;
        private System.Windows.Forms.Button btnStart;
        private System.Windows.Forms.TextBox txtFileInput;
        private System.Windows.Forms.TextBox txtFileOutPut;
        private System.Windows.Forms.Button btnClose;
    }
}

