/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.daw.gym.model.dao;
import com.daw.gym.model.Cliente;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author josejimenezdelapaz
 */
public class ClienteDAOList implements ClienteDAO{

    private static ArrayList<Cliente> clientes=null;
    private static int idCliente = 1;

    public ClienteDAOList() {
        if (clientes == null) {
            clientes = new ArrayList<>();
            clientes.add(new Cliente(idCliente++, "Paco", "Jimenez","adasd@gmail.com",Date.valueOf(LocalDate.MAX),"paquito232","123456"));
            clientes.add(new Cliente(idCliente++, "Maria", "Gomez","maria@gmail.com",Date.valueOf(LocalDate.MAX),"lamari","lamari2123"));
            clientes.add(new Cliente(idCliente++, "Rudolf", "Paix","rudi@gmail.com",Date.valueOf(LocalDate.MAX),"rudolf2","elmejor"));
        }
    }
    
    @Override
    public Cliente buscaId(Integer id) {
        Cliente encontrado=null;
        for (Cliente c: clientes) {
               if (c.getId()==id) encontrado=c;
        }
        return encontrado;
    }
    @Override
    public List<Cliente> buscaTodos() {
        return clientes;
    }

    @Override
    public boolean crea(Cliente c) {
        Cliente nc=new Cliente(c);
        nc.setId(idCliente);
        clientes.add(nc);
        c.setId(idCliente);
        idCliente++;
        return true;
    }
        
    @Override
    public boolean guarda(Cliente c) {
        boolean result=false;
        Cliente nc=new Cliente(c);
        for (int i=0; i<clientes.size();i++) {
            if (clientes.get(i).getId()==nc.getId()) {
                clientes.set(i, nc);
                result=true;
            }
        }       
        return result;
    }
    
    @Override
    public boolean borra(Integer id) {
        boolean result=false;
        for (int i=0; i<clientes.size();i++) {
            if (clientes.get(i).getId()==id) {
                clientes.remove(i);
                result=true;
            }
        }       
        return result;
    }
    
    public int numClientes() {
        return clientes.size();
    }

}
