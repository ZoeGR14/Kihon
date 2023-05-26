package Controlador_HabMet;

import java.sql.Connection;
import java.sql.DriverManager;

public class crearConexion {
    Connection conecta;
    String url = "jdbc:mysql://localhost:3306/Kihon";
    String usuario = "root";
    String pass = "n0m3l0";
    
    public Connection crearConexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conecta = DriverManager.getConnection(url,usuario,pass);
            System.out.println("conexion exitosa");
        }
        catch(Exception e){
            System.out.println("no se conectó" + e);
        }
        return conecta;
    }
}