package com.Grupo8.MiObservadorSpring.Modelo;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
/*import javax.persistence.JoinColumn;*/
import javax.persistence.Table;

@Entity
@Table(name = "cuenta")

public class Cuenta {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column (name = "idCuenta")
	private Integer idCuenta;
	
	
	@Column (name = "documento")
	 private Integer documento;
	 @Column(name = "nombre")
	 private String nombre;
	 @Column(name = "apellido")
	 private String apellido;
	 @Column(name = "email")
	 private String email;
	 @Column(name = "password")
	 private String password;
	 @Column(name="telefono")
	 private Integer telefono;
	 @Column(name = "domicilio")
	 private String domicilio;
	 @Column(name = "fecha_nacimiento")
	 private String fecha_nacimiento;
	/* @JoinColumn(name = "idCuentaOrigen")
	 private Integer idCuentaOrigen;
	 @JoinColumn(name = "idCuentaEstado")
	 private Integer idCuentaEstado;
	 @JoinColumn(name = "idCiudad")
	 private Integer idCiudad;
	 @JoinColumn(name = "idTipoCuenta")
	 private Integer idTipoCuenta;*/

	 
	 public Integer getId() {
	     return idCuenta;
	 }

	 public void setId(Integer idCuenta) {
	     this.idCuenta = idCuenta;
	 }


	 public Integer getdocumento() {
			return documento;
		}

	 public void setdocumento(Integer documento) {
			this.documento = documento;
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

			public String getEmail() {
				return email;
			}

			public void setEmail(String email) {
				this.email = email;
			}

			public String getPassword() {
				return password;
			}

			public void setPassword(String password) {
				this.password = password;
			}

			public Integer getTelefono() {
				return telefono;
			}

			public void setTelefono(Integer telefono) {
				this.telefono = telefono;
			}

			public String getDomicilio() {
				return domicilio;
			}

			public void setDomicilio(String domicilio) {
				this.domicilio = domicilio;
			}

			public String getFecha_nacimiento() {
				return fecha_nacimiento;
			}

			public void setFecha_nacimiento(String fecha_nacimiento) {
				this.fecha_nacimiento = fecha_nacimiento;
			}

			/*public Integer getIdCuentaOrigen() {
				return idCuentaOrigen;
			}

			public void setIdCuentaOrigen(Integer idCuentaOrigen) {
				this.idCuentaOrigen = idCuentaOrigen;
			}
			
			public Integer getIdCuentaEstado() {
				return idCuentaEstado;
			}

			public void setIdCuentaEstado(Integer idCuentaEstado) {
				this.idCuentaEstado = idCuentaEstado;
			}
			
			public Integer getIdCiudad() {
				return idCiudad;
			}

			public void setIdCiudad(Integer idCiudad) {
				this.idCiudad = idCiudad;
			}
			
			public Integer getIdTipoCuenta() {
				return idTipoCuenta;
			}

			public void setIdTipoCuenta(Integer idTipoCuenta) {
				this.idTipoCuenta = idTipoCuenta;
			}*/
			
/*public Cuenta() {
	
}*/

}


