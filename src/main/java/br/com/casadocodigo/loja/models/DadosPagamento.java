package br.com.casadocodigo.loja.models;

import java.math.BigDecimal;

public class DadosPagamento {

	private BigDecimal value;
	
	public DadosPagamento() {
		
	}

	public DadosPagamento(BigDecimal total) {
		this.value = total;
	}

	public BigDecimal getValue() {
		return value;
	}

	
}
