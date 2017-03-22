
package com.daw.gym.model.dao;

public interface GenericDAO<T,K> 
{
    
    public T buscaId(K id);
    public boolean crea(T c);
    public boolean edita(T c);    
    public boolean borra(K id);
}
