/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package TestVocacional;

import Modelo.TestVocacional;
import Modelo.TestVocacionalDAO;
import java.util.List;

/**
 *
 * @author alumno
 */
public class pruebas_tv {
    public static void main (String[] args){
        TestVocacional resul = new TestVocacional(65, 33, 87, 100, "pedrito");
        TestVocacionalDAO dao = new TestVocacionalDAO();
        dao.agregar(resul);
        String area = dao.areaResultado(resul);
        System.out.println(area);
        List<String>lista = dao.obtenerCarreras(area);
        for (int i = 0; i < lista.size(); i++) {
            System.out.println((i+1) + ". " + lista.get(i));
        }
    }
    
}
