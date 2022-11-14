package com.Grupo8.MiObservadorSpring.Servicio;


import com.Grupo8.MiObservadorSpring.Modelo.Cuenta;

import java.util.List;

/*import org.springframework.stereotype.Service;

@Service*/

public interface CuentaServicio {
	public List<Cuenta> findAll();
	public Cuenta save (Cuenta cuenta);
	public Cuenta findById(Integer idCuenta);

	
}
