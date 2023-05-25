package Modelo;

/**
 *
 * @author jwqui
 */
public class Personalidad {

    String mbti;
    String carrera;
    String usuario;

    public Personalidad() {
    }

    public Personalidad(String mbti, String carrera, String usuario) {
        this.mbti = mbti;
        this.carrera = carrera;
        this.usuario = usuario;
    }

    public String getMbti() {
        return mbti;
    }

    public void setMbti(String mbti) {
        this.mbti = mbti;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
    
    
}
