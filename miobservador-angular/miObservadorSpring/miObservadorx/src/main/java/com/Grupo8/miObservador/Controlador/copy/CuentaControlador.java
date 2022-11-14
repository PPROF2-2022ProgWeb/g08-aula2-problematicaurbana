package com.Grupo8.miObservador.Controlador.copy;

import java.util.List;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RestController;

import com.Grupo8.miObservador.modelo.copy.cuenta1;
import com.Grupo8.miObservador.Repositorio.copy.CuentaRepositorio1;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
/*import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;*/


/*import com.Grupo8.miObservador.cuentaServicio;
import com.Grupo8.miObservador.controller.Cuenta;
import com.Grupo8.miObservador.repository.CuentaRepositorio;*/

@CrossOrigin(origins="http://localhost:8080")
@RestController
@SuppressWarnings("unused")


@RequestMapping("/api")


public class CuentaControlador {

	@Autowired
	 CuentaRepositorio1 cuentaRepo;
	/*@Transactional(readOnly=true)*/
	
	 @GetMapping("/cuenta")
	public ResponseEntity<List<cuenta1>> 
	 getAllCuenta(
			 @RequestParam Integer documento,
					   @RequestParam String nombre,
					   @RequestParam String apellido,
					   @RequestParam String email,
					   @RequestParam String password,
					   @RequestParam Integer telefono,
					   @RequestParam String domicilio,
					   @RequestParam String fecha_nacimiento,
					   @RequestParam Integer idCuentaOrigen,
					   @RequestParam Integer idCuentaEstado,
					   @RequestParam Integer idCiudad,
					   @RequestParam Integer idTipoCuenta) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@PostMapping(path="/cuenta") 
	
	public ResponseEntity<cuenta1>
		createCuenta ( 
	   @RequestBody cuenta1 cuenta ) {
	 /* (@RequestParam Integer documento,
	   @RequestParam String nombre,
	   @RequestParam String apellido,
	   @RequestParam String email,
	   @RequestParam String password,
	   @RequestParam Integer telefono,
	   @RequestParam String domicilio,
	   @RequestParam String fecha_nacimiento,
	   @RequestParam Integer idCuentaOrigen,
	   @RequestParam Integer idCuentaEstado,
	   @RequestParam Integer idCiudad,
	   @RequestParam Integer idTipoCuenta) {*/


	    cuenta1 n = new cuenta1();
	    /*n.setdocumento(documento);
	    n.setNombre(nombre);
	    n.setApellido(apellido);
	    n.setEmail(email);
	    n.setPassword(password);
	    n.setTelefono(telefono);
	    n.setDomicilio(domicilio);
	    n.setFecha_nacimiento(fecha_nacimiento);
	    n.setIdCuentaOrigen(idCuentaOrigen);
	    n.setIdCuentaEstado(idCuentaEstado);
	    n.setIdCiudad(idCiudad);
	    n.setIdTipoCuenta(idTipoCuenta);*/
	    cuentaRepo.save(n);
	    /*return "Saved";*/
		return null;
	  }
	
	/*@GetMapping(path="/cuenta")
	  public @ResponseBody Iterable<Cuenta> getAllUsers() {
	    // This returns a JSON or XML with the users
	    return cuentaRepo.findAll();*/
	  }	
	

