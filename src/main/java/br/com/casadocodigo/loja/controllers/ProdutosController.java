package br.com.casadocodigo.loja.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.casadocodigo.loja.daos.ProdutoDAO;
import br.com.casadocodigo.loja.models.Produto;
import br.com.casadocodigo.loja.models.TipoPreco;

@Controller
public class ProdutosController {
	
	@Autowired
	private ProdutoDAO produtoDAO;

	@RequestMapping("produtos/form")
	public ModelAndView form() {
		ModelAndView modelAndView = new ModelAndView("produtos/form");
		modelAndView.addObject("tipos", TipoPreco.values());		
		return modelAndView;
	}
	
	@RequestMapping(value="produtos", method=RequestMethod.POST)
	public String grava(Produto produto) {
		System.out.println(produto);
		produtoDAO.gravar(produto);
		return "produtos/ok";
	}
	
	@RequestMapping(value="produtos", method=RequestMethod.GET)	
	public ModelAndView listar() {
		ModelAndView modelAndView = new ModelAndView("produtos/lista");
		List<Produto> produtos = produtoDAO.listar();
		modelAndView.addObject("produtos", produtos);
		return modelAndView;
	}
}
