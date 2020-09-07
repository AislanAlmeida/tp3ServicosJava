package br.com.infnet.tp3servicos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.infnet.tp3servicos.service.EstadoService;

@Controller
public class EstadoController {
	@Autowired
	private EstadoService service;
	
	@RequestMapping(value = "/estados",method = RequestMethod.GET)
	public String obterEstados(
				Model model
			) {
		model.addAttribute("listaEstados",service.obterEstados());
		return "estados"; 
	}
}
