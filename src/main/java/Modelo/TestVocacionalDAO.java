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
    
    public String areaResultado(String usuario){
        String sql = "select id_res, usuario, case greatest(ICFM, CSA, CMB, HA) when ICFM then 'ICFM' when CSA then 'CSA' when CMB then 'CMB' when HA then 'HA' end as area_max from test_voc where greatest(ICFM, CSA, CMB, HA) is not null and usuario = '"+usuario+"' and id_res = (select MAX(id_res) from test_voc);";
        String area = "";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                area = rs.getString(3);
            }
        } catch (Exception e) {
            System.out.println("Error area resultado");
            e.printStackTrace();
        }
        return area;
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
