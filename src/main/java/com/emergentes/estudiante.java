package com.emergentes;

import java.util.ArrayList;

public class estudiante {
    private int id;
    private String fecha;
    private String nombres;
    private String apellidos;
    private String turno;
    private ArrayList<String> seminarios;

    public int getId() {
        return id;
    }

    public String getFecha() {
        return fecha;
    }

    public String getNombres() {
        return nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public String getTurno() {
        return turno;
    }

    public ArrayList<String> getSeminarios() {
        return seminarios;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }

    public void setSeminarios(ArrayList<String> seminarios) {
        this.seminarios = seminarios;
    }

    @Override
    public String toString() {
        return "estudiante{" + "id=" + id + ", fecha=" + fecha + ", nombres=" + nombres + ", apellidos=" + apellidos + ", turno=" + turno + ", seminarios=" + seminarios + '}';
    }

    public estudiante() {
        this.id = 0;
        this.fecha = "";
        this.nombres = "";
        this.apellidos = "";
        this.turno = "";
        this.seminarios = new ArrayList<>();
    }

    
}

