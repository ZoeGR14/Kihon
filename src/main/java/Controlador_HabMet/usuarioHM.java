package Controlador_HabMet;

public class usuarioHM {
    
    private String nom_usu;
    private String pass_usu;
    private int tipo_usu;

    public usuarioHM() {
    }

    public usuarioHM(String nom_usu, String pass_usu, int tipo_usu) {
        this.nom_usu = nom_usu;
        this.pass_usu = pass_usu;
        this.tipo_usu = tipo_usu;
    }

    public int getTipo_usu() {
        return tipo_usu;
    }

    public void setTipo_usu(int tipo_usu) {
        this.tipo_usu = tipo_usu;
    }

    public String getNom_usu() {
        return nom_usu;
    }

    public void setNom_usu(String nom_usu) {
        this.nom_usu = nom_usu;
    }

    public String getPass_usu() {
        return pass_usu;
    }

    public void setPass_usu(String pass_usu) {
        this.pass_usu = pass_usu;
    }
    
    
}
