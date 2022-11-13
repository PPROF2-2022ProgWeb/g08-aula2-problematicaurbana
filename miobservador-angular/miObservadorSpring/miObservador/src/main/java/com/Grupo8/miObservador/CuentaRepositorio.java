package com.Grupo8.miObservador;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface CuentaRepositorio extends JpaRepository<Cuenta, Integer>{

}
