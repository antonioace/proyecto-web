package dto;

public class Categoria {
 private Integer id;
 private String descripcion;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getDescripcion() {
	return descripcion;
}
public void setDescripcion(String descripcion) {
	this.descripcion = descripcion;
}
@Override
public String toString() {
	return "Categoria [id=" + id + ", descripcion=" + descripcion + "]";
}
public Categoria(Integer id, String descripcion) {
	super();
	this.id = id;
	this.descripcion = descripcion;
}
public Categoria(String descripcion) {
	super();
	this.descripcion = descripcion;
}
public Categoria() {
	super();
}





 
}
