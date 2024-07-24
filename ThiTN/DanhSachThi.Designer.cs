namespace ThiTN
{
    partial class DanhSachThi
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
            this.listChuaCo = new System.Windows.Forms.ListBox();
            this.label1 = new System.Windows.Forms.Label();
            this.listDaCo = new System.Windows.Forms.ListBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btnThem = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // listChuaCo
            // 
            this.listChuaCo.FormattingEnabled = true;
            this.listChuaCo.ItemHeight = 16;
            this.listChuaCo.Location = new System.Drawing.Point(45, 69);
            this.listChuaCo.Name = "listChuaCo";
            this.listChuaCo.Size = new System.Drawing.Size(454, 436);
            this.listChuaCo.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(42, 39);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(386, 25);
            this.label1.TabIndex = 1;
            this.label1.Text = "Danh sách lớp học phần chưa có đề thi";
            // 
            // listDaCo
            // 
            this.listDaCo.FormattingEnabled = true;
            this.listDaCo.ItemHeight = 16;
            this.listDaCo.Location = new System.Drawing.Point(711, 69);
            this.listDaCo.Name = "listDaCo";
            this.listDaCo.Size = new System.Drawing.Size(454, 436);
            this.listDaCo.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(708, 39);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(363, 25);
            this.label2.TabIndex = 3;
            this.label2.Text = "Danh sách lớp học phần đã có đề thi";
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(530, 273);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(157, 54);
            this.btnXoa.TabIndex = 8;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.UseVisualStyleBackColor = true;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnThem
            // 
            this.btnThem.Location = new System.Drawing.Point(530, 134);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(157, 54);
            this.btnThem.TabIndex = 10;
            this.btnThem.Text = "Thêm";
            this.btnThem.UseVisualStyleBackColor = true;
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(530, 451);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(157, 54);
            this.btnSave.TabIndex = 11;
            this.btnSave.Text = "Lưu";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // DanhSachThi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1213, 547);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.btnThem);
            this.Controls.Add(this.btnXoa);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.listDaCo);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.listChuaCo);
            this.Name = "DanhSachThi";
            this.Text = "DanhSachThi";
            this.Load += new System.EventHandler(this.DanhSachThi_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ListBox listChuaCo;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ListBox listDaCo;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.Button btnThem;
        private System.Windows.Forms.Button btnSave;
    }
}