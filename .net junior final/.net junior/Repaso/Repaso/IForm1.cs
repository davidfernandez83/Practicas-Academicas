using System;
namespace Repaso
{
    interface IForm1
    {
        void NewMethod();
        int Propiedad { get; set; }
    }

    public class miClase : IForm1
    {

        #region IForm1 Members

        public void NewMethod()
        {
            throw new NotImplementedException();
        }

        public int Propiedad
        {
            get
            {
                throw new NotImplementedException();
            }
            set
            {
                throw new NotImplementedException();
            }
        }

        #endregion
    }
}
