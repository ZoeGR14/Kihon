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
        TestVocacionalDAO dao = new TestVocacionalDAO();
        String preguntas[] = {"ICFM2", "0", "CSA2", "HA", "HA2", "CMB"};
        float [] result = new float [4];
        
        result = dao.contar(preguntas);
        
        for (int i = 0; i < result.length; i++) {
            System.out.println(result[i]);
        }
        TestVocacional resul = new TestVocacional(65, 33, 87, 100, "pedrito");
        dao.agregar(resul);
        String area = dao.areaResultado(resul);
        System.out.println(area);
        List<String>lista = dao.obtenerCarreras(area);
        for (int i = 0; i < lista.size(); i++) {
            System.out.println((i+1) + ". " + lista.get(i));
        }
    }
    
}
