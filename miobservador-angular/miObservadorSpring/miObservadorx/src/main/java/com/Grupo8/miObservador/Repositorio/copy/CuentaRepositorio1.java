package com.Grupo8.miObservador.Repositorio.copy;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.Grupo8.miObservador.modelo.copy.cuenta1;
public interface CuentaRepositorio1 extends JpaRepository<cuenta1, Long>{
	List<cuenta1> findByPublished(boolean published);
	List<cuenta1> findByTitleContaining(String title);
}
