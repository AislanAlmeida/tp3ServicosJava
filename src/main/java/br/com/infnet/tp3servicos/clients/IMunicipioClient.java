package br.com.infnet.tp3servicos.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.com.infnet.tp3servicos.model.negocio.Estado;
import br.com.infnet.tp3servicos.model.negocio.Municipio;

@FeignClient(url = "https://servicodados.ibge.gov.br/api/v1/localidades/estados",name = "municipioClient")
public interface IMunicipioClient {
	@GetMapping("/{id}/municipios")
	public List<Municipio> obterMunicipios(@PathVariable Integer id);
	
	@GetMapping("/{id}")
	public Estado obterEstadoId(@PathVariable Integer id);
}
