namespace EJEMPLO1
{
    partial class frmPrestamos
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
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.grbPlazo = new System.Windows.Forms.GroupBox();
            this.rdb30años = new System.Windows.Forms.RadioButton();
            this.rdb15años = new System.Windows.Forms.RadioButton();
            this.rdb5años = new System.Windows.Forms.RadioButton();
            this.btnPagoMensual = new System.Windows.Forms.Button();
            this.lbIntereses = new System.Windows.Forms.Label();
            this.lblMonto = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.grbPlazo.SuspendLayout();
            this.SuspendLayout();
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(143, 55);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(121, 21);
            this.comboBox1.TabIndex = 1;
            // 
            // grbPlazo
            // 
            this.grbPlazo.Controls.Add(this.rdb30años);
            this.grbPlazo.Controls.Add(this.rdb15años);
            this.grbPlazo.Controls.Add(this.rdb5años);
            this.grbPlazo.Location = new System.Drawing.Point(12, 130);
            this.grbPlazo.Name = "grbPlazo";
            this.grbPlazo.Size = new System.Drawing.Size(175, 100);
            this.grbPlazo.TabIndex = 2;
            this.grbPlazo.TabStop = false;
            this.grbPlazo.Text = "Plazo";
            // 
            // rdb30años
            // 
            this.rdb30años.AutoSize = true;
            this.rdb30años.Location = new System.Drawing.Point(18, 75);
            this.rdb30años.Name = "rdb30años";
            this.rdb30años.Size = new System.Drawing.Size(64, 17);
            this.rdb30años.TabIndex = 2;
            this.rdb30años.TabStop = true;
            this.rdb30años.Text = "30 Años";
            this.rdb30años.UseVisualStyleBackColor = true;
            this.rdb30años.CheckedChanged += new System.EventHandler(this.radioButton3_CheckedChanged);
            // 
            // rdb15años
            // 
            this.rdb15años.AutoSize = true;
            this.rdb15años.Location = new System.Drawing.Point(18, 49);
            this.rdb15años.Name = "rdb15años";
            this.rdb15años.Size = new System.Drawing.Size(64, 17);
            this.rdb15años.TabIndex = 1;
            this.rdb15años.TabStop = true;
            this.rdb15años.Text = "15 Años";
            this.rdb15años.UseVisualStyleBackColor = true;
            // 
            // rdb5años
            // 
            this.rdb5años.AutoSize = true;
            this.rdb5años.Location = new System.Drawing.Point(18, 24);
            this.rdb5años.Name = "rdb5años";
            this.rdb5años.Size = new System.Drawing.Size(58, 17);
            this.rdb5años.TabIndex = 0;
            this.rdb5años.TabStop = true;
            this.rdb5años.Text = "5 Años";
            this.rdb5años.UseVisualStyleBackColor = true;
            this.rdb5años.CheckedChanged += new System.EventHandler(this.radioButton1_CheckedChanged);
            // 
            // btnPagoMensual
            // 
            this.btnPagoMensual.Location = new System.Drawing.Point(205, 173);
            this.btnPagoMensual.Name = "btnPagoMensual";
            this.btnPagoMensual.Size = new System.Drawing.Size(75, 57);
            this.btnPagoMensual.TabIndex = 3;
            this.btnPagoMensual.Text = "Calcular Pago Mensual";
            this.btnPagoMensual.UseVisualStyleBackColor = true;
            this.btnPagoMensual.Click += new System.EventHandler(this.btnPagoMensual_Click);
            // 
            // lbIntereses
            // 
            this.lbIntereses.AutoSize = true;
            this.lbIntereses.Location = new System.Drawing.Point(13, 62);
            this.lbIntereses.Name = "lbIntereses";
            this.lbIntereses.Size = new System.Drawing.Size(53, 13);
            this.lbIntereses.TabIndex = 4;
            this.lbIntereses.Text = "Intereses:";
            // 
            // lblMonto
            // 
            this.lblMonto.AutoSize = true;
            this.lblMonto.Location = new System.Drawing.Point(12, 28);
            this.lblMonto.Name = "lblMonto";
            this.lblMonto.Size = new System.Drawing.Size(104, 13);
            this.lblMonto.TabIndex = 5;
            this.lblMonto.Text = "Monto del Prestamo:";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(143, 20);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(120, 20);
            this.textBox1.TabIndex = 6;
            // 
            // frmPrestamos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlLight;
            this.ClientSize = new System.Drawing.Size(292, 273);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.lblMonto);
            this.Controls.Add(this.lbIntereses);
            this.Controls.Add(this.btnPagoMensual);
            this.Controls.Add(this.grbPlazo);
            this.Controls.Add(this.comboBox1);
            this.ForeColor = System.Drawing.SystemColors.ControlText;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.Name = "frmPrestamos";
            this.Text = "Calculo Montos a Pagar";
            this.grbPlazo.ResumeLayout(false);
            this.grbPlazo.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.GroupBox grbPlazo;
        private System.Windows.Forms.RadioButton rdb5años;
        private System.Windows.Forms.Button btnPagoMensual;
        private System.Windows.Forms.Label lbIntereses;
        private System.Windows.Forms.Label lblMonto;
        private System.Windows.Forms.RadioButton rdb30años;
        private System.Windows.Forms.RadioButton rdb15años;
        private System.Windows.Forms.TextBox textBox1;
    }
}

