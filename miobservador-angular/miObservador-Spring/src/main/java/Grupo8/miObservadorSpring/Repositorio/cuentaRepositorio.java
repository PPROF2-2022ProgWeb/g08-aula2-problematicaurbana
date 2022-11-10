package Grupo8.miObservadorSpring.Repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import Grupo8.miObservadorSpring.Modelo.cuenta;

@Repository

public interface cuentaRepositorio extends JpaRepository<cuenta, Long>{

}