package br.ifrn.prepara.negocio;

import java.util.List;

import br.ifrn.prepara.modelo.Simulado;
import br.ifrn.prepara.persistencia.SimuladoDAO;

public class GerenteSimulado {
	
private SimuladoDAO dao;
	
	public GerenteSimulado() {
		super();
		dao = new SimuladoDAO();
	}
	
	public List<Simulado> listConcursos() {
		return null;
	}

}
