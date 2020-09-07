package br.com.infnet.tp3servicos.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.infnet.tp3servicos.clients.IEstadoClient;
import br.com.infnet.tp3servicos.model.negocio.Estado;
import br.com.infnet.tp3servicos.model.negocio.Regiao;


@Service
public class EstadoService {
	
	@Autowired
	private IEstadoClient client;
	
	public List<Estado> obterEstados(){
//		Regiao r = new Regiao();
//		r.setId(1);
//		r.setNome("Norte");
//		r.setSigla("N");
//		
//		Estado e = new Estado();
//		e.setId(11);
//		e.setNome("Rio de Janeiro");
//		e.setRegiao(r);
//		e.setSigla("RJ");
		
//		return Arrays.asList(e);
		
		return client.obterEstados();
	}
}
