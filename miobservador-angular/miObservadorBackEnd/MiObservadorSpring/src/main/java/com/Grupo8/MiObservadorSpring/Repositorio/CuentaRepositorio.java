package com.Grupo8.MiObservadorSpring.Repositorio;


import org.springframework.data.jpa.repository.JpaRepository;
import com.Grupo8.MiObservadorSpring.Modelo.Cuenta;


public interface  CuentaRepositorio extends JpaRepository<Cuenta, Integer>{
	/*List<Cuenta> findByPublished(boolean published);
	List<Cuenta> findByTitleContaining(String title);*/
}
