package com.Grupo8.MiObservadorSpring.Servicio;

import com.Grupo8.MiObservadorSpring.Repositorio.CuentaRepositorio;
import com.Grupo8.MiObservadorSpring.Modelo.Cuenta;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service

public class Implementacion implements CuentaServicio{
	@Autowired
	 private CuentaRepositorio cuentaRepositorio;
	
	@Override
	@Transactional(readOnly=true)
	public List <Cuenta> findAll(){
		return (List<Cuenta>) cuentaRepositorio.findAll();
		}
	
	@Override
	@Transactional(readOnly=false)
	public Cuenta save(Cuenta cuenta)
	{
		return cuentaRepositorio.save(cuenta);
	}
	
	@Override
    @Transactional(readOnly=true)
   public Cuenta findById(Integer idCuenta)
   {
       return cuentaRepositorio.findById(idCuenta).orElse(null);
   }
	
}
