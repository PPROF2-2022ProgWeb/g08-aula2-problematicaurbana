package com.Grupo8.MiObservadorSpring.Controlador;

import com.Grupo8.MiObservadorSpring.Modelo.Cuenta;
import com.Grupo8.MiObservadorSpring.Servicio.CuentaServicio;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;


@CrossOrigin(origins={"*"})
@RestController
@SuppressWarnings("unused")
@RequestMapping("/api")

public class CuentaControlador {

	@Autowired
	 private CuentaServicio cuentaRepo;
	/*@Transactional(readOnly=true)*/
	
	 @GetMapping("/cuenta")
	public List<Cuenta> listar()
	 {
		 return cuentaRepo.findAll();
	 }	
	@PostMapping(path="/cuenta") 
	
	public Cuenta CuentaNueva (@RequestBody Cuenta cuenta)
	{
		return cuentaRepo.save(cuenta);
	  }
	
	 @GetMapping("/cuenta/{idCuenta}")
		public Cuenta getUnaCuenta (@PathVariable Integer idCuenta)
		{
		 	return cuentaRepo.findById(idCuenta);
		}
		 
}
