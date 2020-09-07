package br.com.infnet.tp3servicos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.infnet.tp3servicos.service.EnderecoService;

@Controller
public class EnderecoController {
	
	@Autowired
	private EnderecoService service;
	
	@RequestMapping(value = "/endereco",method = RequestMethod.GET)
	public String showEndereco() {
		return "endereco";
	}
	
	@RequestMapping(value = "/endereco",method = RequestMethod.POST)
	public String showPorCep(
			Model model,
			@RequestParam String cep) {
		
		model.addAttribute("endereco",service.obterPorCep(cep));
		return "endereco";
	}
}
