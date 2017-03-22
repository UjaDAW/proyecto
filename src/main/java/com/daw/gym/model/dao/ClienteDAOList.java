
package com.daw.gym.model.dao;
import com.daw.gym.model.Cliente;
import java.util.ArrayList;



public class ClienteDAOList implements ClienteDAO
{

    private static ArrayList<Cliente> clientes=null;
    private static int idCliente = 1;

    public ClienteDAOList() 
    {
        if (clientes == null) 
        {
            clientes = new ArrayList<>();
        }
    }
    
    @Override
    public Cliente buscaId(Integer id) 
    {
        Cliente encontrado=null;
        for (Cliente c: clientes)
        {
            if (c.getId()==id)
            {
                encontrado=c;
            }
        }
        return encontrado;
    }

    @Override
    public boolean crea(Cliente c) 
    {
        Cliente nuevoCliente=new Cliente(c);
        nuevoCliente.setId(idCliente);
        clientes.add(nuevoCliente);
        c.setId(idCliente);
        idCliente++;
        
        return true;
    }
        
    @Override
    public boolean edita(Cliente c) 
    {
        boolean guardado=false;
        Cliente nuevoCliente=new Cliente(c);
        for (int i=0; i<clientes.size();i++) 
        {
            if (clientes.get(i).getId()==nuevoCliente.getId()) 
            {
                clientes.set(i, nuevoCliente);
                guardado=true;
            }
        }       
        return guardado;
    }
    
    @Override
    public boolean borra(Integer id) 
    {
        boolean borrado=false;
        for (int i=0; i<clientes.size();i++) 
        {
            if (clientes.get(i).getId()==id) 
            {
                clientes.remove(i);
                borrado=true;
            }
        }       
        return borrado;
    }

}
