package util;

import java.util.List;

public interface GenericDAO<T> {
	
	
public   void insert(T obj) ;
public void delete(T obj) ;
public void update(T obj);
public T findById(Integer id);
public List<T> findAll();
}
