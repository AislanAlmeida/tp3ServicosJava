package br.com.infnet.tp3servicos.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.com.infnet.tp3servicos.model.negocio.Estado;

@FeignClient(url = "https://servicodados.ibge.gov.br/api/v1/localidades/estados",name = "estadoClient")
public interface IEstadoClient {
	@GetMapping
	public List<Estado> obterEstados();
	

}
//https://servicodados.ibge.gov.br/api/v1/localidades/estados/11/municipios
