package com.Grupo8.miObservador;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;


import com.Grupo8.miObservador.CuentaRepositorio;
import com.Grupo8.miObservador.Cuenta;

import java.util.List;

@SuppressWarnings("unused")
@Service

public class cuentaServicio {
	public static List<Cuenta> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
}
