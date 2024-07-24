namespace ThiTN
{
    partial class TrangChu
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
            this.pnLoad = new System.Windows.Forms.Panel();
            this.pnSideMenu = new System.Windows.Forms.Panel();
            this.button6 = new System.Windows.Forms.Button();
            this.pnSVControls = new System.Windows.Forms.Panel();
            this.btnLichThi = new System.Windows.Forms.Button();
            this.pnGVControls = new System.Windows.Forms.Panel();
            this.button1 = new System.Windows.Forms.Button();
            this.btnThongKe = new System.Windows.Forms.Button();
            this.btnQuanLiKho = new System.Windows.Forms.Button();
            this.btnCauHoi = new System.Windows.Forms.Button();
            this.pnLogo = new System.Windows.Forms.Panel();
            this.lblUsername = new System.Windows.Forms.Label();
            this.btnKetQua = new System.Windows.Forms.Button();
            this.pnSideMenu.SuspendLayout();
            this.pnSVControls.SuspendLayout();
            this.pnGVControls.SuspendLayout();
            this.pnLogo.SuspendLayout();
            this.SuspendLayout();
            // 
            // pnLoad
            // 
            this.pnLoad.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnLoad.Location = new System.Drawing.Point(204, 0);
            this.pnLoad.Name = "pnLoad";
            this.pnLoad.Size = new System.Drawing.Size(1378, 853);
            this.pnLoad.TabIndex = 3;
            // 
            // pnSideMenu
            // 
            this.pnSideMenu.AutoScroll = true;
            this.pnSideMenu.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(100)))), ((int)(((byte)(200)))));
            this.pnSideMenu.Controls.Add(this.btnKetQua);
            this.pnSideMenu.Controls.Add(this.button6);
            this.pnSideMenu.Controls.Add(this.pnSVControls);
            this.pnSideMenu.Controls.Add(this.pnGVControls);
            this.pnSideMenu.Controls.Add(this.pnLogo);
            this.pnSideMenu.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnSideMenu.Location = new System.Drawing.Point(0, 0);
            this.pnSideMenu.Name = "pnSideMenu";
            this.pnSideMenu.Size = new System.Drawing.Size(204, 853);
            this.pnSideMenu.TabIndex = 2;
            // 
            // button6
            // 
            this.button6.BackColor = System.Drawing.Color.Red;
            this.button6.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.button6.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button6.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button6.Image = global::ThiTN.Properties.Resources.logout__1_;
            this.button6.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button6.Location = new System.Drawing.Point(0, 808);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(204, 45);
            this.button6.TabIndex = 3;
            this.button6.Text = "Đăng xuất";
            this.button6.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;
            this.button6.UseVisualStyleBackColor = false;
            // 
            // pnSVControls
            // 
            this.pnSVControls.Controls.Add(this.btnLichThi);
            this.pnSVControls.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnSVControls.Location = new System.Drawing.Point(0, 287);
            this.pnSVControls.Name = "pnSVControls";
            this.pnSVControls.Size = new System.Drawing.Size(204, 50);
            this.pnSVControls.TabIndex = 2;
            // 
            // btnLichThi
            // 
            this.btnLichThi.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnLichThi.FlatAppearance.BorderSize = 0;
            this.btnLichThi.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnLichThi.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLichThi.ForeColor = System.Drawing.Color.White;
            this.btnLichThi.Image = global::ThiTN.Properties.Resources.schedule__1_;
            this.btnLichThi.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnLichThi.Location = new System.Drawing.Point(0, 0);
            this.btnLichThi.Name = "btnLichThi";
            this.btnLichThi.Padding = new System.Windows.Forms.Padding(20, 0, 0, 0);
            this.btnLichThi.Size = new System.Drawing.Size(204, 50);
            this.btnLichThi.TabIndex = 13;
            this.btnLichThi.Text = "   Lịch thi";
            this.btnLichThi.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnLichThi.UseVisualStyleBackColor = true;
            this.btnLichThi.Click += new System.EventHandler(this.btnLichThi_Click);
            // 
            // pnGVControls
            // 
            this.pnGVControls.Controls.Add(this.button1);
            this.pnGVControls.Controls.Add(this.btnThongKe);
            this.pnGVControls.Controls.Add(this.btnQuanLiKho);
            this.pnGVControls.Controls.Add(this.btnCauHoi);
            this.pnGVControls.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnGVControls.Location = new System.Drawing.Point(0, 85);
            this.pnGVControls.Name = "pnGVControls";
            this.pnGVControls.Size = new System.Drawing.Size(204, 202);
            this.pnGVControls.TabIndex = 1;
            // 
            // button1
            // 
            this.button1.Dock = System.Windows.Forms.DockStyle.Top;
            this.button1.FlatAppearance.BorderSize = 0;
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.ForeColor = System.Drawing.Color.White;
            this.button1.Image = global::ThiTN.Properties.Resources.graduate;
            this.button1.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button1.Location = new System.Drawing.Point(0, 150);
            this.button1.Name = "button1";
            this.button1.Padding = new System.Windows.Forms.Padding(20, 0, 0, 0);
            this.button1.Size = new System.Drawing.Size(204, 50);
            this.button1.TabIndex = 11;
            this.button1.Text = "   Sinh viên";
            this.button1.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.btnQuanLiHocSinh_Click);
            // 
            // btnThongKe
            // 
            this.btnThongKe.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnThongKe.FlatAppearance.BorderSize = 0;
            this.btnThongKe.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnThongKe.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThongKe.ForeColor = System.Drawing.Color.White;
            this.btnThongKe.Image = global::ThiTN.Properties.Resources.exam;
            this.btnThongKe.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnThongKe.Location = new System.Drawing.Point(0, 100);
            this.btnThongKe.Name = "btnThongKe";
            this.btnThongKe.Padding = new System.Windows.Forms.Padding(20, 0, 0, 0);
            this.btnThongKe.Size = new System.Drawing.Size(204, 50);
            this.btnThongKe.TabIndex = 10;
            this.btnThongKe.Text = "   Đề thi";
            this.btnThongKe.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnThongKe.UseVisualStyleBackColor = true;
            this.btnThongKe.Click += new System.EventHandler(this.btnQuanLiDeThi_Click);
            // 
            // btnQuanLiKho
            // 
            this.btnQuanLiKho.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnQuanLiKho.FlatAppearance.BorderSize = 0;
            this.btnQuanLiKho.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnQuanLiKho.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnQuanLiKho.ForeColor = System.Drawing.Color.White;
            this.btnQuanLiKho.Image = global::ThiTN.Properties.Resources.books;
            this.btnQuanLiKho.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnQuanLiKho.Location = new System.Drawing.Point(0, 50);
            this.btnQuanLiKho.Name = "btnQuanLiKho";
            this.btnQuanLiKho.Padding = new System.Windows.Forms.Padding(20, 0, 0, 0);
            this.btnQuanLiKho.Size = new System.Drawing.Size(204, 50);
            this.btnQuanLiKho.TabIndex = 9;
            this.btnQuanLiKho.Text = "   Môn học";
            this.btnQuanLiKho.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnQuanLiKho.UseVisualStyleBackColor = true;
            this.btnQuanLiKho.Click += new System.EventHandler(this.btnQuanLiMonHoc_Click);
            // 
            // btnCauHoi
            // 
            this.btnCauHoi.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnCauHoi.FlatAppearance.BorderSize = 0;
            this.btnCauHoi.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCauHoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCauHoi.ForeColor = System.Drawing.Color.White;
            this.btnCauHoi.Image = global::ThiTN.Properties.Resources.question;
            this.btnCauHoi.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCauHoi.Location = new System.Drawing.Point(0, 0);
            this.btnCauHoi.Name = "btnCauHoi";
            this.btnCauHoi.Padding = new System.Windows.Forms.Padding(20, 0, 0, 0);
            this.btnCauHoi.Size = new System.Drawing.Size(204, 50);
            this.btnCauHoi.TabIndex = 8;
            this.btnCauHoi.Text = "   Câu hỏi";
            this.btnCauHoi.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCauHoi.UseVisualStyleBackColor = true;
            this.btnCauHoi.Click += new System.EventHandler(this.btnCauHoi_Click);
            // 
            // pnLogo
            // 
            this.pnLogo.Controls.Add(this.lblUsername);
            this.pnLogo.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnLogo.Location = new System.Drawing.Point(0, 0);
            this.pnLogo.Name = "pnLogo";
            this.pnLogo.Size = new System.Drawing.Size(204, 85);
            this.pnLogo.TabIndex = 0;
            // 
            // lblUsername
            // 
            this.lblUsername.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblUsername.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblUsername.ForeColor = System.Drawing.Color.White;
            this.lblUsername.Location = new System.Drawing.Point(0, 0);
            this.lblUsername.Name = "lblUsername";
            this.lblUsername.Size = new System.Drawing.Size(204, 85);
            this.lblUsername.TabIndex = 0;
            this.lblUsername.Text = "Xin chào, USERNAME";
            this.lblUsername.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // btnKetQua
            // 
            this.btnKetQua.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnKetQua.FlatAppearance.BorderSize = 0;
            this.btnKetQua.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnKetQua.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnKetQua.ForeColor = System.Drawing.Color.White;
            this.btnKetQua.Image = global::ThiTN.Properties.Resources.exam1;
            this.btnKetQua.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnKetQua.Location = new System.Drawing.Point(0, 337);
            this.btnKetQua.Name = "btnKetQua";
            this.btnKetQua.Padding = new System.Windows.Forms.Padding(20, 0, 0, 0);
            this.btnKetQua.Size = new System.Drawing.Size(204, 50);
            this.btnKetQua.TabIndex = 13;
            this.btnKetQua.Text = "   Kết quả";
            this.btnKetQua.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnKetQua.UseVisualStyleBackColor = true;
            this.btnKetQua.Click += new System.EventHandler(this.btnKetQua_Click);
            // 
            // TrangChu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1582, 853);
            this.Controls.Add(this.pnLoad);
            this.Controls.Add(this.pnSideMenu);
            this.Name = "TrangChu";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "TrangChu";
            this.Load += new System.EventHandler(this.TrangChu_Load);
            this.pnSideMenu.ResumeLayout(false);
            this.pnSVControls.ResumeLayout(false);
            this.pnGVControls.ResumeLayout(false);
            this.pnLogo.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnLoad;
        private System.Windows.Forms.Panel pnSideMenu;
        private System.Windows.Forms.Panel pnLogo;
        private System.Windows.Forms.Panel pnSVControls;
        private System.Windows.Forms.Panel pnGVControls;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btnThongKe;
        private System.Windows.Forms.Button btnQuanLiKho;
        private System.Windows.Forms.Button btnCauHoi;
        private System.Windows.Forms.Button btnLichThi;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Label lblUsername;
        private System.Windows.Forms.Button btnKetQua;
    }
}