
package com.daw.gym.model;

public class Cliente {

    private int id;
    private String nombre;
    private String apellidos;
    private String email;
    private boolean mayoredad;
    private String nick;
    private String pass;

    
    public Cliente() {
        id = 0;
        nombre = "";
        apellidos = "";
        email = "";
        nick = "";
        pass = "";
        mayoredad = false;
        
    }

    public Cliente(int _id, String _nombre, String _apellidos, String _email ,boolean _mayoredad, String _nick, String _pass) {
        this.id = _id;
        this.nombre = _nombre;
        this.apellidos = _apellidos;
        this.email = _email;
        this.nick = _nick;
        this.pass = _pass;
        this.mayoredad = _mayoredad;
    }

    public Cliente(Cliente c) 
    {
        this.id=c.id;
        this.nombre = c.nombre;
        this.apellidos = c.apellidos;
        this.email = c.email;
        this.nick = c.nick;
        this.pass = c.pass;
        this.mayoredad = c.mayoredad;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
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

    /**
     * @return the mayoredad
     */
    public boolean isMayoredad() {
        return mayoredad;
    }

    /**
     * @param mayoredad the mayoredad to set
     */
    public void setMayoredad(boolean mayoredad) {
        this.mayoredad = mayoredad;
    }

}
