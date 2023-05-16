package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class Conexion {
    Connection con;
    public Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con  = DriverManager.getConnection("jdbc:mysql://localhost:3308/Kihon?autoReconnect=true&useSSL=false","root","n0m3l0");      
            System.out.println("bien conexion");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.print("Error Conexión");
            e.printStackTrace();
        }
        return con;
    }
}
