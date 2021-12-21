namespace EJERCICIO3
{
    partial class frmABMBancos
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
            this.lblCodigo = new System.Windows.Forms.Label();
            this.txtCódigo = new System.Windows.Forms.TextBox();
            this.lblBanco = new System.Windows.Forms.Label();
            this.cboBancos = new System.Windows.Forms.ComboBox();
            this.rdbCtaCte = new System.Windows.Forms.RadioButton();
            this.rdbCajaAhorro = new System.Windows.Forms.RadioButton();
            this.lblNumero = new System.Windows.Forms.Label();
            this.lblCBU = new System.Windows.Forms.Label();
            this.txtNumero = new System.Windows.Forms.TextBox();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnAceptar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lblCodigo
            // 
            this.lblCodigo.AutoSize = true;
            this.lblCodigo.Location = new System.Drawing.Point(30, 26);
            this.lblCodigo.Name = "lblCodigo";
            this.lblCodigo.Size = new System.Drawing.Size(40, 13);
            this.lblCodigo.TabIndex = 0;
            this.lblCodigo.Text = "Codigo";
            this.lblCodigo.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtCódigo
            // 
            this.txtCódigo.Location = new System.Drawing.Point(90, 26);
            this.txtCódigo.MaxLength = 5;
            this.txtCódigo.Name = "txtCódigo";
            this.txtCódigo.Size = new System.Drawing.Size(100, 20);
            this.txtCódigo.TabIndex = 1;
            // 
            // lblBanco
            // 
            this.lblBanco.AutoSize = true;
            this.lblBanco.Location = new System.Drawing.Point(33, 58);
            this.lblBanco.Name = "lblBanco";
            this.lblBanco.Size = new System.Drawing.Size(38, 13);
            this.lblBanco.TabIndex = 2;
            this.lblBanco.Text = "Banco";
            // 
            // cboBancos
            // 
            this.cboBancos.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboBancos.FormattingEnabled = true;
            this.cboBancos.Items.AddRange(new object[] {
            "Santander",
            "Galicia",
            "Francés"});
            this.cboBancos.Location = new System.Drawing.Point(90, 58);
            this.cboBancos.Name = "cboBancos";
            this.cboBancos.Size = new System.Drawing.Size(165, 21);
            this.cboBancos.TabIndex = 3;
            // 
            // rdbCtaCte
            // 
            this.rdbCtaCte.AutoSize = true;
            this.rdbCtaCte.Location = new System.Drawing.Point(36, 97);
            this.rdbCtaCte.Name = "rdbCtaCte";
            this.rdbCtaCte.Size = new System.Drawing.Size(104, 17);
            this.rdbCtaCte.TabIndex = 4;
            this.rdbCtaCte.TabStop = true;
            this.rdbCtaCte.Text = "Cuenta Corriente";
            this.rdbCtaCte.UseVisualStyleBackColor = true;
            // 
            // rdbCajaAhorro
            // 
            this.rdbCajaAhorro.AutoSize = true;
            this.rdbCajaAhorro.Location = new System.Drawing.Point(170, 97);
            this.rdbCajaAhorro.Name = "rdbCajaAhorro";
            this.rdbCajaAhorro.Size = new System.Drawing.Size(95, 17);
            this.rdbCajaAhorro.TabIndex = 5;
            this.rdbCajaAhorro.TabStop = true;
            this.rdbCajaAhorro.Text = "Caja de Ahorro";
            this.rdbCajaAhorro.UseVisualStyleBackColor = true;
            // 
            // lblNumero
            // 
            this.lblNumero.AutoSize = true;
            this.lblNumero.Location = new System.Drawing.Point(36, 137);
            this.lblNumero.Name = "lblNumero";
            this.lblNumero.Size = new System.Drawing.Size(76, 13);
            this.lblNumero.TabIndex = 6;
            this.lblNumero.Text = "Nro de Cuenta";
            // 
            // lblCBU
            // 
            this.lblCBU.AutoSize = true;
            this.lblCBU.Location = new System.Drawing.Point(36, 175);
            this.lblCBU.Name = "lblCBU";
            this.lblCBU.Size = new System.Drawing.Size(29, 13);
            this.lblCBU.TabIndex = 7;
            this.lblCBU.Text = "CBU";
            // 
            // txtNumero
            // 
            this.txtNumero.Location = new System.Drawing.Point(119, 137);
            this.txtNumero.MaxLength = 15;
            this.txtNumero.Name = "txtNumero";
            this.txtNumero.Size = new System.Drawing.Size(100, 20);
            this.txtNumero.TabIndex = 8;
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(117, 170);
            this.textBox3.MaxLength = 30;
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(158, 20);
            this.textBox3.TabIndex = 9;
            // 
            // btnCancelar
            // 
            this.btnCancelar.Image = global::EJERCICIO3.Properties.Resources.Cancelar;
            this.btnCancelar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCancelar.Location = new System.Drawing.Point(170, 224);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(75, 37);
            this.btnCancelar.TabIndex = 11;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCancelar.UseVisualStyleBackColor = true;
            // 
            // btnAceptar
            // 
            this.btnAceptar.Image = global::EJERCICIO3.Properties.Resources.Aceptar1;
            this.btnAceptar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnAceptar.Location = new System.Drawing.Point(66, 224);
            this.btnAceptar.Name = "btnAceptar";
            this.btnAceptar.Size = new System.Drawing.Size(84, 37);
            this.btnAceptar.TabIndex = 10;
            this.btnAceptar.Text = "Aceptar";
            this.btnAceptar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnAceptar.UseVisualStyleBackColor = true;
            this.btnAceptar.Click += new System.EventHandler(this.button1_Click);
            // 
            // frmABMBancos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(292, 273);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btnAceptar);
            this.Controls.Add(this.textBox3);
            this.Controls.Add(this.txtNumero);
            this.Controls.Add(this.lblCBU);
            this.Controls.Add(this.lblNumero);
            this.Controls.Add(this.rdbCajaAhorro);
            this.Controls.Add(this.rdbCtaCte);
            this.Controls.Add(this.cboBancos);
            this.Controls.Add(this.lblBanco);
            this.Controls.Add(this.txtCódigo);
            this.Controls.Add(this.lblCodigo);
            this.MaximizeBox = false;
            this.Name = "frmABMBancos";
            this.Text = "ABM de Cuentas Bancarias";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblCodigo;
        private System.Windows.Forms.TextBox txtCódigo;
        private System.Windows.Forms.Label lblBanco;
        private System.Windows.Forms.ComboBox cboBancos;
        private System.Windows.Forms.RadioButton rdbCtaCte;
        private System.Windows.Forms.RadioButton rdbCajaAhorro;
        private System.Windows.Forms.Label lblNumero;
        private System.Windows.Forms.Label lblCBU;
        private System.Windows.Forms.TextBox txtNumero;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.Button btnAceptar;
        private System.Windows.Forms.Button btnCancelar;
    }
}

