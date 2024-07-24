namespace ThiTN
{
    partial class ImportExcel
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
            this.dgvExcel = new System.Windows.Forms.DataGridView();
            this.btnKhong = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.btnCo = new System.Windows.Forms.Button();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            ((System.ComponentModel.ISupportInitialize)(this.dgvExcel)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvExcel
            // 
            this.dgvExcel.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvExcel.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgvExcel.Location = new System.Drawing.Point(0, 75);
            this.dgvExcel.Name = "dgvExcel";
            this.dgvExcel.RowTemplate.Height = 24;
            this.dgvExcel.Size = new System.Drawing.Size(1102, 432);
            this.dgvExcel.TabIndex = 0;
            // 
            // btnKhong
            // 
            this.btnKhong.Location = new System.Drawing.Point(731, 12);
            this.btnKhong.Name = "btnKhong";
            this.btnKhong.Size = new System.Drawing.Size(102, 38);
            this.btnKhong.TabIndex = 2;
            this.btnKhong.Text = "Không";
            this.btnKhong.UseVisualStyleBackColor = true;
            this.btnKhong.Click += new System.EventHandler(this.btnKhong_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(12, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(475, 25);
            this.label1.TabIndex = 3;
            this.label1.Text = "Bạn có chắc muốn thêm bảng sau vào cơ sở dữ liệu ?";
            // 
            // btnCo
            // 
            this.btnCo.Location = new System.Drawing.Point(592, 12);
            this.btnCo.Name = "btnCo";
            this.btnCo.Size = new System.Drawing.Size(102, 38);
            this.btnCo.TabIndex = 4;
            this.btnCo.Text = "Có";
            this.btnCo.UseVisualStyleBackColor = true;
            this.btnCo.Click += new System.EventHandler(this.btnCo_Click);
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // ImportExcel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1102, 507);
            this.Controls.Add(this.btnCo);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnKhong);
            this.Controls.Add(this.dgvExcel);
            this.Name = "ImportExcel";
            this.Text = "ImportExcel";
            this.Load += new System.EventHandler(this.ImportExcel_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvExcel)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvExcel;
        private System.Windows.Forms.Button btnKhong;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnCo;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
    }
}