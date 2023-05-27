package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jwqui
 */
public class PersonalidadDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public List listar(String alumno) {
        List<Personalidad> listaP = new ArrayList<>();
        String sql = "SELECT * FROM carrera_mbti INNER JOIN personalidad_usu ON personalidad_usu.mbti = carrera_mbti.mbti WHERE personalidad_usu.usuario =" + alumno;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Personalidad mbti = new Personalidad();
                mbti.setMbti(rs.getString("mbti"));
                mbti.setUsuario(rs.getString("alumno"));
                listaP.add(mbti);
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Error al listar, wEy >:C");
        }
        return listaP;
    }
    
    public void agregar (Personalidad mbti){
        String sql = "insert into personalidad_usu (usuario, mbti) values (?, ?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, mbti.getUsuario());
            ps.setString(2, mbti.getMbti());
            ps.executeUpdate();
            
            ps.close();
            con.close();
            
        } catch (Exception e) {
            System.out.println("Al agregar :3");
            e.printStackTrace();
        }
    }

    public void reintentar(Personalidad mbti, String alumno) {
    String sql = "update personalidad_usu set mbti = ? where usuario = ?";
    try {
        con = cn.getConnection();
        ps = con.prepareStatement(sql);
        ps.setString(1, mbti.getMbti());
        ps.setString(2, alumno);
        ps.executeUpdate();
        
        ps.close();
        con.close();
    } catch (Exception e) {
        System.out.println("Actualizar falló >:V");
        e.printStackTrace();
    }
}

}
