package br.com.infnet.tp3servicos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.infnet.tp3servicos.service.MunicipioService;

@Controller
public class MunicipioController {
	@Autowired
	private MunicipioService service;
	
	@RequestMapping(value = "/estados/{id}/municipios",method = RequestMethod.GET)
	public String obterMunicipios(
			Model model,
			@PathVariable Integer id
			) {
		
		model.addAttribute("listaMunicipios",service.obterMunicipios(id));
		model.addAttribute("estado",service.obterEstado(id));
		
		return "municipios";
	}
}
