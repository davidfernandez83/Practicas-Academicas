namespace Repaso1
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
            this.lblFecha = new System.Windows.Forms.Label();
            this.lblCliente = new System.Windows.Forms.Label();
            this.lblFactura = new System.Windows.Forms.Label();
            this.txtFecha = new System.Windows.Forms.TextBox();
            this.txtCliente = new System.Windows.Forms.TextBox();
            this.txtFactura1 = new System.Windows.Forms.TextBox();
            this.txtFactura2 = new System.Windows.Forms.TextBox();
            this.txtFactura3 = new System.Windows.Forms.TextBox();
            this.gpbArticulos = new System.Windows.Forms.GroupBox();
            this.lblArticulo = new System.Windows.Forms.Label();
            this.lblCantidad = new System.Windows.Forms.Label();
            this.lblPrecio = new System.Windows.Forms.Label();
            this.txtArticulo = new System.Windows.Forms.TextBox();
            this.txtCantidad = new System.Windows.Forms.TextBox();
            this.txtPrecio = new System.Windows.Forms.TextBox();
            this.btnAgregar = new System.Windows.Forms.Button();
            this.dgvArticulos = new System.Windows.Forms.DataGridView();
            this.gpbArticulos.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvArticulos)).BeginInit();
            this.SuspendLayout();
            // 
            // lblFecha
            // 
            this.lblFecha.AutoSize = true;
            this.lblFecha.Location = new System.Drawing.Point(12, 28);
            this.lblFecha.Name = "lblFecha";
            this.lblFecha.Size = new System.Drawing.Size(40, 13);
            this.lblFecha.TabIndex = 0;
            this.lblFecha.Text = "Fecha:";
            this.lblFecha.Click += new System.EventHandler(this.label1_Click);
            // 
            // lblCliente
            // 
            this.lblCliente.AutoSize = true;
            this.lblCliente.Location = new System.Drawing.Point(15, 62);
            this.lblCliente.Name = "lblCliente";
            this.lblCliente.Size = new System.Drawing.Size(42, 13);
            this.lblCliente.TabIndex = 1;
            this.lblCliente.Text = "Cliente:";
            this.lblCliente.Click += new System.EventHandler(this.label2_Click);
            // 
            // lblFactura
            // 
            this.lblFactura.AutoSize = true;
            this.lblFactura.Location = new System.Drawing.Point(13, 97);
            this.lblFactura.Name = "lblFactura";
            this.lblFactura.Size = new System.Drawing.Size(58, 13);
            this.lblFactura.TabIndex = 2;
            this.lblFactura.Text = "Nº factura:";
            // 
            // txtFecha
            // 
            this.txtFecha.Location = new System.Drawing.Point(86, 28);
            this.txtFecha.Name = "txtFecha";
            this.txtFecha.Size = new System.Drawing.Size(100, 20);
            this.txtFecha.TabIndex = 3;
            // 
            // txtCliente
            // 
            this.txtCliente.Location = new System.Drawing.Point(86, 62);
            this.txtCliente.Name = "txtCliente";
            this.txtCliente.Size = new System.Drawing.Size(100, 20);
            this.txtCliente.TabIndex = 4;
            this.txtCliente.TextChanged += new System.EventHandler(this.textBox2_TextChanged);
            // 
            // txtFactura1
            // 
            this.txtFactura1.Location = new System.Drawing.Point(86, 97);
            this.txtFactura1.Name = "txtFactura1";
            this.txtFactura1.Size = new System.Drawing.Size(28, 20);
            this.txtFactura1.TabIndex = 5;
            this.txtFactura1.TextChanged += new System.EventHandler(this.textBox3_TextChanged);
            // 
            // txtFactura2
            // 
            this.txtFactura2.Location = new System.Drawing.Point(134, 96);
            this.txtFactura2.Name = "txtFactura2";
            this.txtFactura2.Size = new System.Drawing.Size(100, 20);
            this.txtFactura2.TabIndex = 6;
            // 
            // txtFactura3
            // 
            this.txtFactura3.Location = new System.Drawing.Point(249, 97);
            this.txtFactura3.Name = "txtFactura3";
            this.txtFactura3.Size = new System.Drawing.Size(100, 20);
            this.txtFactura3.TabIndex = 7;
            // 
            // gpbArticulos
            // 
            this.gpbArticulos.Controls.Add(this.dgvArticulos);
            this.gpbArticulos.Controls.Add(this.btnAgregar);
            this.gpbArticulos.Controls.Add(this.txtPrecio);
            this.gpbArticulos.Controls.Add(this.txtCantidad);
            this.gpbArticulos.Controls.Add(this.txtArticulo);
            this.gpbArticulos.Controls.Add(this.lblPrecio);
            this.gpbArticulos.Controls.Add(this.lblCantidad);
            this.gpbArticulos.Controls.Add(this.lblArticulo);
            this.gpbArticulos.Location = new System.Drawing.Point(18, 132);
            this.gpbArticulos.Name = "gpbArticulos";
            this.gpbArticulos.Size = new System.Drawing.Size(331, 211);
            this.gpbArticulos.TabIndex = 8;
            this.gpbArticulos.TabStop = false;
            this.gpbArticulos.Text = "Articulos";
            // 
            // lblArticulo
            // 
            this.lblArticulo.AutoSize = true;
            this.lblArticulo.Location = new System.Drawing.Point(6, 27);
            this.lblArticulo.Name = "lblArticulo";
            this.lblArticulo.Size = new System.Drawing.Size(45, 13);
            this.lblArticulo.TabIndex = 0;
            this.lblArticulo.Text = "Articulo:";
            // 
            // lblCantidad
            // 
            this.lblCantidad.AutoSize = true;
            this.lblCantidad.Location = new System.Drawing.Point(1, 64);
            this.lblCantidad.Name = "lblCantidad";
            this.lblCantidad.Size = new System.Drawing.Size(52, 13);
            this.lblCantidad.TabIndex = 1;
            this.lblCantidad.Text = "Cantidad:";
            this.lblCantidad.Click += new System.EventHandler(this.label5_Click);
            // 
            // lblPrecio
            // 
            this.lblPrecio.AutoSize = true;
            this.lblPrecio.Location = new System.Drawing.Point(6, 94);
            this.lblPrecio.Name = "lblPrecio";
            this.lblPrecio.Size = new System.Drawing.Size(40, 13);
            this.lblPrecio.TabIndex = 2;
            this.lblPrecio.Text = "Precio:";
            // 
            // txtArticulo
            // 
            this.txtArticulo.Location = new System.Drawing.Point(68, 24);
            this.txtArticulo.Name = "txtArticulo";
            this.txtArticulo.Size = new System.Drawing.Size(100, 20);
            this.txtArticulo.TabIndex = 3;
            // 
            // txtCantidad
            // 
            this.txtCantidad.Location = new System.Drawing.Point(68, 61);
            this.txtCantidad.Name = "txtCantidad";
            this.txtCantidad.Size = new System.Drawing.Size(100, 20);
            this.txtCantidad.TabIndex = 4;
            // 
            // txtPrecio
            // 
            this.txtPrecio.Location = new System.Drawing.Point(68, 91);
            this.txtPrecio.Name = "txtPrecio";
            this.txtPrecio.Size = new System.Drawing.Size(100, 20);
            this.txtPrecio.TabIndex = 5;
            // 
            // btnAgregar
            // 
            this.btnAgregar.Location = new System.Drawing.Point(201, 59);
            this.btnAgregar.Name = "btnAgregar";
            this.btnAgregar.Size = new System.Drawing.Size(75, 23);
            this.btnAgregar.TabIndex = 6;
            this.btnAgregar.Text = "Agregar";
            this.btnAgregar.UseVisualStyleBackColor = true;
            // 
            // dgvArticulos
            // 
            this.dgvArticulos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvArticulos.Location = new System.Drawing.Point(9, 117);
            this.dgvArticulos.Name = "dgvArticulos";
            this.dgvArticulos.Size = new System.Drawing.Size(316, 88);
            this.dgvArticulos.TabIndex = 7;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(387, 355);
            this.Controls.Add(this.gpbArticulos);
            this.Controls.Add(this.txtFactura3);
            this.Controls.Add(this.txtFactura2);
            this.Controls.Add(this.txtFactura1);
            this.Controls.Add(this.txtCliente);
            this.Controls.Add(this.txtFecha);
            this.Controls.Add(this.lblFactura);
            this.Controls.Add(this.lblCliente);
            this.Controls.Add(this.lblFecha);
            this.Name = "Form1";
            this.Text = "Alta facturas";
            this.gpbArticulos.ResumeLayout(false);
            this.gpbArticulos.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvArticulos)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblFecha;
        private System.Windows.Forms.Label lblCliente;
        private System.Windows.Forms.Label lblFactura;
        private System.Windows.Forms.TextBox txtFecha;
        private System.Windows.Forms.TextBox txtCliente;
        private System.Windows.Forms.TextBox txtFactura1;
        private System.Windows.Forms.TextBox txtFactura2;
        private System.Windows.Forms.TextBox txtFactura3;
        private System.Windows.Forms.GroupBox gpbArticulos;
        private System.Windows.Forms.Label lblArticulo;
        private System.Windows.Forms.DataGridView dgvArticulos;
        private System.Windows.Forms.Button btnAgregar;
        private System.Windows.Forms.TextBox txtPrecio;
        private System.Windows.Forms.TextBox txtCantidad;
        private System.Windows.Forms.TextBox txtArticulo;
        private System.Windows.Forms.Label lblPrecio;
        private System.Windows.Forms.Label lblCantidad;
    }
}

