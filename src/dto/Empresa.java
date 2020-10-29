package dto;





public class Empresa {
private Integer id;
private String nombre;
private String informacion;
private String telefono;
private String email;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getNombre() {
	return nombre;
}
public void setNombre(String nombre) {
	this.nombre = nombre;
}
public String getInformacion() {
	return informacion;
}
public void setInformacion(String informacion) {
	this.informacion = informacion;
}
public String getTelefono() {
	return telefono;
}
public void setTelefono(String telefono) {
	this.telefono = telefono;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public Empresa(Integer id, String nombre, String información, String telefono, String email) {
	super();
	this.id = id;
	this.nombre = nombre;
	this.informacion = informacion;
	this.telefono = telefono;
	this.email = email;
}
public Empresa() {
	super();
}
public Empresa(String nombre, String información, String telefono, String email) {
	super();
	this.nombre = nombre;
	this.informacion = informacion;
	this.telefono = telefono;
	this.email = email;
}





}
