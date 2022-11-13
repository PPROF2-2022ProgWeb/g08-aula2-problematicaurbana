package com.Grupo8.miObservador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.Grupo8.miObservador.Cuenta;
import com.Grupo8.miObservador.cuentaServicio;

@SuppressWarnings("unused")
@RestController
@CrossOrigin(origins={"*"})
@RequestMapping("/api")

public class CuentaControlador {

	@Autowired
	 private cuentaServicio cuentaService;
 
	 @GetMapping("/cuenta")
	    public List<Cuenta> listar()
	    {
	        return cuentaServicio.findAll();
	    }
	
}
