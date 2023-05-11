package Modelo;
public class TestVocacional {
    int ICFM, CSA, CMB, HA;
    String alumno;

    public TestVocacional() {
    }

    public TestVocacional(int ICFM, int CSA, int CMB, int HA, String alumno) {
        this.ICFM = ICFM;
        this.CSA = CSA;
        this.CMB = CMB;
        this.HA = HA;
        this.alumno = alumno;
    }

    public int getICFM() {
        return ICFM;
    }

    public void setICFM(int ICFM) {
        this.ICFM = ICFM;
    }

    public int getCSA() {
        return CSA;
    }

    public void setCSA(int CSA) {
        this.CSA = CSA;
    }

    public int getCMB() {
        return CMB;
    }

    public void setCMB(int CMB) {
        this.CMB = CMB;
    }

    public int getHA() {
        return HA;
    }

    public void setHA(int HA) {
        this.HA = HA;
    }

    public String getAlumno() {
        return alumno;
    }

    public void setAlumno(String alumno) {
        this.alumno = alumno;
    }
    
    
}
