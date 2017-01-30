package br.com.casadocodigo.loja;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

import br.com.casadocodigo.loja.models.CarrinhoItem;
import br.com.casadocodigo.loja.models.Produto;
import br.com.casadocodigo.loja.models.TipoPreco;

public class CarrinhoItemTest {

	@Test
	public void hasCodeTest() {
		
		Produto produto1 = new Produto();
		produto1.setId(1L);
		
		Produto produto2 = new Produto();
		produto2.setId(1L);
		
		assertTrue(produto1.equals(produto2));
		assertEquals(produto1.hashCode(), produto2.hashCode());
		
		CarrinhoItem item1 = new CarrinhoItem(produto1, TipoPreco.COMBO);
		CarrinhoItem item2 = new CarrinhoItem(produto2, TipoPreco.COMBO);
		
		assertTrue(item1.equals(item2));
		assertEquals(item1.hashCode(), item2.hashCode());
		
	}
}
