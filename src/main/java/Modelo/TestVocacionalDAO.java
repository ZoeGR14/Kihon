package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TestVocacionalDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public List listar(String usuario){
        List<TestVocacional> lista = new ArrayList<>();
        String sql = "select * from test_voc where usuario = '"+usuario+"' order by id_res desc limit 1";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                TestVocacional tv = new TestVocacional();
                tv.setICFM(rs.getFloat(2));
                tv.setCSA(rs.getFloat(3));
                tv.setCMB(rs.getFloat(4));
                tv.setHA(rs.getFloat(5));
                tv.setAlumno(rs.getString(6));
                lista.add(tv);
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Error listar areas");
        }
        return lista;
    }
    
    public void agregar(TestVocacional tv){
        String sql = "insert into test_voc (ICFM, CSA, CMB, HA, usuario) values (?, ?, ?, ?, ?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setFloat(1, tv.getICFM());
            ps.setFloat(2, tv.getCSA());
            ps.setFloat(3, tv.getCMB());
            ps.setFloat(4, tv.getHA());
            ps.setString(5, tv.getAlumno());
            ps.executeUpdate();
            
            ps.close();
            con.close();
            
        } catch (Exception e) {
            System.out.println("error: agregar()");
            e.printStackTrace();
        }
    }
    
    public float[] contar(String [] preguntas){
        float [] res = new float [4];
        float icfm = 0, csa = 0, cmb = 0, ha = 0;
        
        for (int i = 0; i < preguntas.length; i++) {
            switch(preguntas[i]){
                case "ICFM":
                    icfm = icfm + 1;
                    break;
                case "ICFM2":
                    icfm = icfm + 0.5f;
                    break;
                case "CSA":
                    csa = csa + 1;
                    break;
                case "CSA2":
                    csa = csa + 0.5f;
                    break;
                case "CMB":
                    cmb = cmb + 1;
                    break;
                case "CMB2":
                    cmb = cmb + 0.5f;
                    break;
                case "HA":
                    ha = ha + 1;
                    break;
                case "HA2":
                    ha = ha + 0.5f;
                    break;
                case "0":
                    break;
            }
        }
        
        res[0] = icfm; res[1] = csa; res[2] = cmb; res[3] = ha;
        
        return res;
    }
    
    public List areaResultado(String usuario){
        String sql = "SELECT CASE GREATEST(ICFM, CSA, CMB, HA) WHEN ICFM THEN 'ICFM' ELSE 0 END AS max_ICFM, CASE GREATEST(ICFM, CSA, CMB, HA) WHEN CSA THEN 'CSA' ELSE 0 END AS max_CSA, CASE GREATEST(ICFM, CSA, CMB, HA) WHEN CMB THEN 'CMB' ELSE 0 END AS max_CMB, CASE GREATEST(ICFM, CSA, CMB, HA) WHEN HA THEN 'HA' ELSE 0 END AS max_HA FROM test_voc  where usuario = '"+ usuario +"' and id_res = (select MAX(id_res) from test_voc) HAVING CONCAT(max_ICFM, max_CSA, max_CMB, max_HA) <> ''";
        List <String> areas = new ArrayList<>();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                for (int i = 1; i < 5; i++) {
                    if(!rs.getString(i).equals("0")){
                        areas.add(rs.getString(i));
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("Error area resultado");
            e.printStackTrace();
        }
        return areas;
    }
    public List obtenerCarreras(String area){
        List<String> lista1 = new ArrayList<>();
        String sql = "select * from carreras where area = '"+ area +"'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                lista1.add(rs.getString(1));
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Error obtenerCarreras()");
            e.printStackTrace();
        }
        return lista1;
    }
}
