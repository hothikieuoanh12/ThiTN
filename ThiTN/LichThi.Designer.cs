namespace ThiTN
{
    partial class LichThi
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
            this.label11 = new System.Windows.Forms.Label();
            this.pnLichThi = new System.Windows.Forms.FlowLayoutPanel();
            this.SuspendLayout();
            // 
            // label11
            // 
            this.label11.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(150)))), ((int)(((byte)(250)))));
            this.label11.Dock = System.Windows.Forms.DockStyle.Top;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label11.Location = new System.Drawing.Point(0, 0);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(1360, 85);
            this.label11.TabIndex = 1;
            this.label11.Text = "LỊCH THI";
            this.label11.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // pnLichThi
            // 
            this.pnLichThi.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnLichThi.Location = new System.Drawing.Point(0, 85);
            this.pnLichThi.Name = "pnLichThi";
            this.pnLichThi.Size = new System.Drawing.Size(1360, 721);
            this.pnLichThi.TabIndex = 2;
            // 
            // LichThi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1360, 806);
            this.Controls.Add(this.pnLichThi);
            this.Controls.Add(this.label11);
            this.Name = "LichThi";
            this.Text = "LichThi";
            this.Load += new System.EventHandler(this.LichThi_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.FlowLayoutPanel pnLichThi;

    }
}