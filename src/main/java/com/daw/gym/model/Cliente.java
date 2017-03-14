/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.daw.gym.model;

import java.sql.Date;
import java.time.LocalDate;

/**
 *
 * @author josejimenezdelapaz
 */
public class Cliente {

  
    private String nombre;
    private String apellidos;
    private String email;
    private Date fechaNacimiento; //Import de .sql
    private String nick;
    private String pass;
    //Constructor por defecto
    Cliente(){
        nombre="AAAA";
        apellidos="BBB BBB";
        email="aa@aa.com";
        fechaNacimiento=Date.valueOf(LocalDate.MAX);
        nick="nick";
        pass="pass";
    }
    //Constructor parametrizado
    Cliente(String _nombre,String _apellidos,String _email,Date _fechaNacimiento,String _nick,String _pass){
        this.nombre=_nombre;
        this.apellidos=_apellidos;
        this.email=_email;
        this.fechaNacimiento=_fechaNacimiento;
        this.nick=_nick;
        this.pass=_pass;
    }
    //Constructor de copia
    Cliente(Cliente c){
        this.nombre=c.nombre;
        this.apellidos=c.apellidos;;
        this.email=c.email;;
        this.fechaNacimiento=c.fechaNacimiento;;
        this.nick=c.nick;
        this.pass=c.pass;
    }
   

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the apellidos
     */
    public String getApellidos() {
        return apellidos;
    }

    /**
     * @param apellidos the apellidos to set
     */
    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the fechaNacimiento
     */
    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    /**
     * @param fechaNacimiento the fechaNacimiento to set
     */
    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    /**
     * @return the nick
     */
    public String getNick() {
        return nick;
    }

    /**
     * @param nick the nick to set
     */
    public void setNick(String nick) {
        this.nick = nick;
    }

    /**
     * @return the pass
     */
    public String getPass() {
        return pass;
    }

    /**
     * @param pass the pass to set
     */
    public void setPass(String pass) {
        this.pass = pass;
    }

}
