package Modelo;

import java.math.BigDecimal;
import java.math.RoundingMode;

public class TestVocacional {
    float ICFM, CSA, CMB, HA;
    String alumno;

    public TestVocacional() {
    }

    public TestVocacional(float ICFM, float CSA, float CMB, float HA, String alumno) {
        this.ICFM = ICFM;
        this.CSA = CSA;
        this.CMB = CMB;
        this.HA = HA;
        this.alumno = alumno;
    }

    public float getICFM() {
        return ICFM;
    }

    public void setICFM(float ICFM) {
        this.ICFM = ICFM;
    }

    public float getCSA() {
        return CSA;
    }

    public void setCSA(float CSA) {
        this.CSA = CSA;
    }

    public float getCMB() {
        return CMB;
    }

    public void setCMB(float CMB) {
        this.CMB = CMB;
    }

    public float getHA() {
        return HA;
    }

    public void setHA(float HA) {
        this.HA = HA;
    }

    public String getAlumno() {
        return alumno;
    }

    public void setAlumno(String alumno) {
        this.alumno = alumno;
    }
    
    public void todoPorcentajes(){
        BigDecimal d1 = new BigDecimal((this.ICFM / 15) * 100);
        BigDecimal d2 = new BigDecimal((this.CSA / 15) * 100);
        BigDecimal d3 = new BigDecimal((this.CMB / 15) * 100);
        BigDecimal d4 = new BigDecimal((this.HA / 15) * 100);
        
        d1 = d1.setScale(1, RoundingMode.HALF_UP);
        d2 = d2.setScale(1, RoundingMode.HALF_UP);
        d3 = d3.setScale(1, RoundingMode.HALF_UP);
        d4 = d4.setScale(1, RoundingMode.HALF_UP);
        
        this.ICFM = d1.floatValue();
        this.CSA = d2.floatValue();
        this.CMB = d3.floatValue();
        this.HA = d4.floatValue();
    }
    
}
