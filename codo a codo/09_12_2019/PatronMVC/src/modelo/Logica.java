package modelo;

import javax.swing.JOptionPane;
import modelo.dao.PersonaDao;
import modelo.vo.PersonaVo;
import controlador.Coordinador;

public class Logica {

    private Coordinador miCordinador;
    public static boolean consultaPersona = false;
    public static boolean modificaPersona = false;

    public void setMiCordinador(Coordinador miCordinador) {
        this.miCordinador = miCordinador;
    }

    public void validarRegistro(PersonaVo miPersona) {
        PersonaDao miPersonaDao;
        if (miPersona.getIdPersona() > 99) {
            miPersonaDao = new PersonaDao();
            miPersonaDao.registrarPersona(miPersona);
        } else {
            JOptionPane.showConfirmDialog(null, "El documento debe tener mas de un digito", "Advertencia", JOptionPane.WARNING_MESSAGE);

        }
    }

    public PersonaVo validarConsulta(String codigoPersona) {
        PersonaDao miPersonaDao;
        try {
            int codigo = Integer.parseInt(codigoPersona);
            if (codigo > 99) {
                miPersonaDao = new PersonaDao();
                consultaPersona = true;
                return miPersonaDao.buscarPersona(codigo);
            } else {
                JOptionPane.showConfirmDialog(null, "El documento debe tener mas de un digito", "Advertencia", JOptionPane.ERROR_MESSAGE);
                consultaPersona = false;
            }
        }
            catch(NumberFormatException ex){
                 
                 JOptionPane.showConfirmDialog(null,"Debe ingresar un dato numerico","Advertencia",JOptionPane.ERROR_MESSAGE);
                 consultaPersona=false;
            }
            catch(Exception ex){
                 JOptionPane.showConfirmDialog(null,"Se ha producido un error inesperado","Advertencia",JOptionPane.ERROR_MESSAGE);
                consultaPersona=false;
            }
            return null;

        }
    public void validarModificacion(PersonaVo miPersona) {
        PersonaDao miPersonaDao;
        if (miPersona.getNombrePersona().length > 5) {
            miPersonaDao = new PersonaDao();
            miPersonaDao.modificarPersona(miPersona);
        } else {
            JOptionPane.showConfirmDialog(null, "El nombre debe tener mas de 5 digitos", "Advertencia", JOptionPane.WARNING_MESSAGE);

        }
    }
    
        public void validarModificacion(String codigo) {
        PersonaDao miPersonaDao;
            miPersonaDao = new PersonaDao();
            miPersonaDao.eliminarPersona(codigo);
        }
    
    }