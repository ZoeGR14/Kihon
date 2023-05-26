package Controlador_HabMet;

import java.sql.Connection;
import java.sql.*;

public class metUsuHMDAO {
    crearConexion cn = new crearConexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public metUsuHM agregar (String user){
        metUsuHM metasE = new metUsuHM();
        String sql = "select * from descripcionMetas where nom_usu =?";
        
        try{
            con = cn.crearConexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
        }
        catch(Exception e){
            System.out.println(e);
        }
        
        return metasE;
    }
}
