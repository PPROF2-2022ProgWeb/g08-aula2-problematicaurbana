package com.Grupo8.miObservador;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Column;

@SuppressWarnings("unused")
@Entity
@Table(name = "cuenta")


public class Cuenta {

	@Id
	@GeneratedValue  
	
	@Column(name="idCuenta")
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
   private int telefono;
   @Column(name = "domicilio")
   private String domicilio;
   @Column(name = "fecha_nacimiento")
   private String fecha_nacimiento;
   @Column(name = "idCuentaOrigen")
   private int idCuentaOrigen;
   @Column(name = "idCuentaEstado")
   private int idCuentaEstado;
   @Column(name = "idCiudad")
   private int idCiudad;
   @Column(name = "idTipoCuenta")
   private int idTipoCuenta;
   
   public int getId() {
       return idCuenta;
   }

   public void setId(Integer Id) {
       this.idCuenta = Id;
   }


   public int getdocumento() {
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

		public int getTelefono() {
			return telefono;
		}

		public void setTelefono(int telefono) {
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

		public int getIdCuentaOrigen() {
			return idCuentaOrigen;
		}

		public void setIdCuentaOrigen(int idCuentaOrigen) {
			this.idCuentaOrigen = idCuentaOrigen;
		}
		
		public int getIdCuentaEstado() {
			return idCuentaEstado;
		}

		public void setIdCuentaEstado(int idCuentaEstado) {
			this.idCuentaEstado = idCuentaEstado;
		}
		
		public int getIdCiudad() {
			return idCiudad;
		}

		public void setIdCiudad(int idCiudad) {
			this.idCiudad = idCiudad;
		}
		
		public int getIdTipoCuenta() {
			return idTipoCuenta;
		}

		public void setIdTipoCuenta(int idTipoCuenta) {
			this.idTipoCuenta = idTipoCuenta;
		}
}
