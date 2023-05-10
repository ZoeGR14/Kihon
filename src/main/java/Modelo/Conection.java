package Modelo;
/**
 *
 * @author jwqui
 */
import java.sql.Connection;
import java.sql.DriverManager;
public class Conection {

    Connection con;

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/baseDatSop?autoReconnect=true&useSSL=false", "root", "n0m3l0");
        } catch (Exception e) {
            System.out.print("Error de conexión");
            e.printStackTrace();
        }
        return con;
    }
}
