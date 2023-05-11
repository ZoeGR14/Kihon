package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class TestVocacionalDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public void agregar(TestVocacional tv){
        String sql = "insert into test_voc (ICFM, CSA, CMB, HA, usuario) values (?, ?, ?, ?, ?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, tv.getICFM());
            ps.setInt(2, tv.getCSA());
            ps.setInt(3, tv.getCMB());
            ps.setInt(4, tv.getHA());
            ps.setString(5, tv.getAlumno());
            ps.executeUpdate();
            
            ps.close();
            con.close();
            
        } catch (Exception e) {
            System.out.println("error: agregar()");
            e.printStackTrace();
        }
    }
    
    public String areaResultado(TestVocacional tv){
        int ICFM = tv.getICFM();
        int CSA = tv.getCSA();
        int CMB = tv.getCMB();
        int HA = tv.getHA();
        
        int max = Math.max(Math.max(Math.max(ICFM, CSA), CMB), HA);
        String area = "";
        
        if(max == ICFM)
            area = "ICFM";
        else if(max == CSA)
            area = "CSA";
        else if(max == CMB)
            area = "CMB";
        else if(max == HA)
            area = "HA";
        
        return area;
    }
    /* En proceso
    public List obtenerCarreras(){
    }*/
}
