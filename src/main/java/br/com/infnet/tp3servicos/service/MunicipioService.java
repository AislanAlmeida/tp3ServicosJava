package br.com.infnet.tp3servicos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.infnet.tp3servicos.clients.IMunicipioClient;
import br.com.infnet.tp3servicos.model.negocio.Estado;
import br.com.infnet.tp3servicos.model.negocio.Municipio;

@Service
public class MunicipioService {
	@Autowired
	private IMunicipioClient client;
	
	public List<Municipio> obterMunicipios(Integer id){
		
		return client.obterMunicipios(id);
	}
	
	public Estado obterEstado(Integer id) {
		return client.obterEstadoId(id);
	}
}
