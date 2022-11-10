package Grupo8.miObservadorSpring.Controlador;

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

import Grupo8.miObservadorSpring.Modelo.cuenta;
import Grupo8.miObservadorSpring.Servicio.cuentaServicio;

@SuppressWarnings("unused")
@RestController
@RequestMapping("/api")

public class cuentaController {
	
	 @Autowired
	 private cuentaServicio cuentaService;
  
	 @GetMapping("/cuenta")
	    public List<cuenta> listar()
	    {
	        return cuentaServicio.findAll();
	    }
	 
	
}
