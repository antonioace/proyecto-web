package dto;

public class Admin {
private Integer idAdmin;	
private String usuario;
private String contrasenia;
public Integer getIdAdmin() {
	return idAdmin;
}
public void setIdAdmin(Integer idAdmin) {
	this.idAdmin = idAdmin;
}
public String getUsuario() {
	return usuario;
}
public void setUsuario(String usuario) {
	this.usuario = usuario;
}
public String getContrasenia() {
	return contrasenia;
}
public void setContrasenia(String contrasenia) {
	this.contrasenia = contrasenia;
}
public Admin(Integer idAdmin, String usuario, String contrasenia) {
	super();
	this.idAdmin = idAdmin;
	this.usuario = usuario;
	this.contrasenia = contrasenia;
}
public Admin(String usuario, String contrasenia) {
	super();
	this.usuario = usuario;
	this.contrasenia = contrasenia;
}
public Admin() {
	super();
}



}
