﻿namespace CenterReservation.INT.BasicData
{
    partial class FrmPhysicianSalary
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
            this.btn_Delete = new System.Windows.Forms.Button();
            this.btn_Back = new System.Windows.Forms.Button();
            this.btn_Save = new System.Windows.Forms.Button();
            this.btn_Edit = new System.Windows.Forms.Button();
            this.btn_Add = new System.Windows.Forms.Button();
            this.cbx_PhysicianName = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.numericUpDown1 = new System.Windows.Forms.NumericUpDown();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.dateTimePicker2 = new System.Windows.Forms.DateTimePicker();
            this.numericUpDown2 = new System.Windows.Forms.NumericUpDown();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown2)).BeginInit();
            this.SuspendLayout();
            // 
            // btn_Delete
            // 
            this.btn_Delete.Location = new System.Drawing.Point(325, 202);
            this.btn_Delete.Name = "btn_Delete";
            this.btn_Delete.Size = new System.Drawing.Size(79, 47);
            this.btn_Delete.TabIndex = 14;
            this.btn_Delete.Text = "حذف";
            this.btn_Delete.UseVisualStyleBackColor = true;
            this.btn_Delete.Click += new System.EventHandler(this.btn_Delete_Click);
            // 
            // btn_Back
            // 
            this.btn_Back.Location = new System.Drawing.Point(499, 202);
            this.btn_Back.Name = "btn_Back";
            this.btn_Back.Size = new System.Drawing.Size(79, 47);
            this.btn_Back.TabIndex = 13;
            this.btn_Back.Text = "عودة";
            this.btn_Back.UseVisualStyleBackColor = true;
            this.btn_Back.Click += new System.EventHandler(this.btn_Back_Click);
            // 
            // btn_Save
            // 
            this.btn_Save.Location = new System.Drawing.Point(412, 202);
            this.btn_Save.Name = "btn_Save";
            this.btn_Save.Size = new System.Drawing.Size(79, 47);
            this.btn_Save.TabIndex = 12;
            this.btn_Save.Text = "حفظ";
            this.btn_Save.UseVisualStyleBackColor = true;
            this.btn_Save.Click += new System.EventHandler(this.btn_Save_Click);
            // 
            // btn_Edit
            // 
            this.btn_Edit.Location = new System.Drawing.Point(238, 202);
            this.btn_Edit.Name = "btn_Edit";
            this.btn_Edit.Size = new System.Drawing.Size(79, 47);
            this.btn_Edit.TabIndex = 11;
            this.btn_Edit.Text = "تعديل";
            this.btn_Edit.UseVisualStyleBackColor = true;
            this.btn_Edit.Click += new System.EventHandler(this.btn_Edit_Click);
            // 
            // btn_Add
            // 
            this.btn_Add.Location = new System.Drawing.Point(151, 202);
            this.btn_Add.Name = "btn_Add";
            this.btn_Add.Size = new System.Drawing.Size(79, 47);
            this.btn_Add.TabIndex = 10;
            this.btn_Add.Text = "أضافة";
            this.btn_Add.UseVisualStyleBackColor = true;
            this.btn_Add.Click += new System.EventHandler(this.btn_Add_Click);
            // 
            // cbx_PhysicianName
            // 
            this.cbx_PhysicianName.FormattingEnabled = true;
            this.cbx_PhysicianName.Location = new System.Drawing.Point(235, 32);
            this.cbx_PhysicianName.Name = "cbx_PhysicianName";
            this.cbx_PhysicianName.Size = new System.Drawing.Size(282, 21);
            this.cbx_PhysicianName.TabIndex = 9;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(135, 36);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(72, 13);
            this.label1.TabIndex = 8;
            this.label1.Text = "أسم الاخصائى";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(135, 73);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(60, 13);
            this.label2.TabIndex = 16;
            this.label2.Text = "سعر الجلسة";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(135, 110);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(19, 13);
            this.label3.TabIndex = 17;
            this.label3.Text = "من";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(135, 147);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(23, 13);
            this.label4.TabIndex = 18;
            this.label4.Text = "الى";
            // 
            // numericUpDown1
            // 
            this.numericUpDown1.Location = new System.Drawing.Point(235, 73);
            this.numericUpDown1.Name = "numericUpDown1";
            this.numericUpDown1.Size = new System.Drawing.Size(282, 20);
            this.numericUpDown1.TabIndex = 19;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.DropDownAlign = System.Windows.Forms.LeftRightAlignment.Right;
            this.dateTimePicker1.Location = new System.Drawing.Point(235, 110);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.RightToLeftLayout = true;
            this.dateTimePicker1.Size = new System.Drawing.Size(282, 20);
            this.dateTimePicker1.TabIndex = 20;
            // 
            // dateTimePicker2
            // 
            this.dateTimePicker2.DropDownAlign = System.Windows.Forms.LeftRightAlignment.Right;
            this.dateTimePicker2.Location = new System.Drawing.Point(235, 156);
            this.dateTimePicker2.Name = "dateTimePicker2";
            this.dateTimePicker2.RightToLeftLayout = true;
            this.dateTimePicker2.Size = new System.Drawing.Size(282, 20);
            this.dateTimePicker2.TabIndex = 21;
            // 
            // numericUpDown2
            // 
            this.numericUpDown2.Location = new System.Drawing.Point(235, 73);
            this.numericUpDown2.Name = "numericUpDown2";
            this.numericUpDown2.Size = new System.Drawing.Size(282, 20);
            this.numericUpDown2.TabIndex = 19;
            this.numericUpDown2.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.numericUpDown2.UpDownAlign = System.Windows.Forms.LeftRightAlignment.Left;
            // 
            // FrmPhysicianSalary
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(722, 284);
            this.Controls.Add(this.dateTimePicker2);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.numericUpDown2);
            this.Controls.Add(this.numericUpDown1);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.btn_Delete);
            this.Controls.Add(this.btn_Back);
            this.Controls.Add(this.btn_Save);
            this.Controls.Add(this.btn_Edit);
            this.Controls.Add(this.btn_Add);
            this.Controls.Add(this.cbx_PhysicianName);
            this.Controls.Add(this.label1);
            this.Name = "FrmPhysicianSalary";
            this.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.RightToLeftLayout = true;
            this.Text = "FrmPhysicianSalary";
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_Delete;
        private System.Windows.Forms.Button btn_Back;
        private System.Windows.Forms.Button btn_Save;
        private System.Windows.Forms.Button btn_Edit;
        private System.Windows.Forms.Button btn_Add;
        private System.Windows.Forms.ComboBox cbx_PhysicianName;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.NumericUpDown numericUpDown1;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.DateTimePicker dateTimePicker2;
        private System.Windows.Forms.NumericUpDown numericUpDown2;
    }
}