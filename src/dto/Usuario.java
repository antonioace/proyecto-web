package dto;

public class Usuario {
	private Integer idUsuario;
	private String nombre;
	private String apellido;
	private String correo;

	private String cedula;
	private String telefono;
	private String clave;

	public Integer getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getCedula() {
		return cedula;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getContraseña() {
		return clave;
	}

	public void setContraseña(String contraseña) {
		this.clave = contraseña;
	}

	public Usuario() {
		super();
	}

	public Usuario(Integer idUsuario, String nombre, String apellido, String correo, String cedula, String telefono,
			String contraseña) {
		super();
		this.idUsuario = idUsuario;
		this.nombre = nombre;
		this.apellido = apellido;
		this.correo = correo;

		this.cedula = cedula;
		this.telefono = telefono;
		this.clave = contraseña;
	}

	public Usuario(String nombre, String apellido, String correo, String cedula, String telefono, String contraseña) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.correo = correo;

		this.cedula = cedula;
		this.telefono = telefono;
		this.clave = contraseña;
	}

	

}
