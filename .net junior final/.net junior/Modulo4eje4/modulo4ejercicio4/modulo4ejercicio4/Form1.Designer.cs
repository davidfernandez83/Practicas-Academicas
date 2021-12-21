namespace modulo4ejercicio4
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
            this.miTextBox1 = new Controles.miTextBox();
            this.miTextBox2 = new Controles.miTextBox();
            this.SuspendLayout();
            // 
            // miTextBox1
            // 
            this.miTextBox1.Contenido = Controles.eContenido.Caracteres;
            this.miTextBox1.Location = new System.Drawing.Point(90, 62);
            this.miTextBox1.Name = "miTextBox1";
            this.miTextBox1.Size = new System.Drawing.Size(100, 20);
            this.miTextBox1.TabIndex = 0;
            this.miTextBox1.TextoSeleccionado = false;
            // 
            // miTextBox2
            // 
            this.miTextBox2.Contenido = Controles.eContenido.Numeros;
            this.miTextBox2.Location = new System.Drawing.Point(90, 100);
            this.miTextBox2.Name = "miTextBox2";
            this.miTextBox2.Size = new System.Drawing.Size(100, 20);
            this.miTextBox2.TabIndex = 1;
            this.miTextBox2.TextoSeleccionado = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(292, 184);
            this.Controls.Add(this.miTextBox2);
            this.Controls.Add(this.miTextBox1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Controles.miTextBox miTextBox1;
        private Controles.miTextBox miTextBox2;
    }
}