package dto;

public class Producto implements Comparable<Producto>{

	private Integer id;
	private Integer precio;
	private String descripcion;
	private String descripcionGrande;
	private String nombre;
	private Integer idCategoria;
	private String imagen;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getPrecio() {
		return precio;
	}

	public void setPrecio(Integer precio) {
		this.precio = precio;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getDescripcionGrande() {
		return descripcionGrande;
	}

	public void setDescripcionGrande(String descripcionGrande) {
		this.descripcionGrande = descripcionGrande;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Integer getIdCategoria() {
		return idCategoria;
	}

	public void setIdCategoria(Integer idCategoria) {
		this.idCategoria = idCategoria;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public Producto(Integer id, Integer precio, String descripcion, String descripcionGrande, String nombre,
			Integer idCategoria, String imagen) {
		super();
		this.id = id;
		this.precio = precio;
		this.descripcion = descripcion;
		this.descripcionGrande = descripcionGrande;
		this.nombre = nombre;
		this.idCategoria = idCategoria;
		this.imagen = imagen;
	}

	public Producto() {
		super();
	}

	public Producto(Integer precio, String descripcion, String descripcionGrande, String nombre, Integer idCategoria,
			String imagen) {
		super();
		this.precio = precio;
		this.descripcion = descripcion;
		this.descripcionGrande = descripcionGrande;
		this.nombre = nombre;
		this.idCategoria = idCategoria;
		this.imagen = imagen;
	}

	@Override
	public int compareTo(Producto obj) {
		// TODO Auto-generated method stub
		
		Producto p=(Producto)obj;
		if (this.idCategoria < obj.idCategoria) {
			return -1;
		}else if(this.idCategoria>obj.idCategoria) {
			return 1;
		}else {
			return 0;
		}
	}

}
