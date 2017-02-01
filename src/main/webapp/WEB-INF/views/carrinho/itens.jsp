<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="Seu carrinho de compras">
	
	<section class="container middle">
		  
		    <table id="cart-table">
		      <colgroup>
		        <col class="item-col"/>
		        <col class="item-price-col"/>
		        <col class="item-quantity-col"/>
		        <col class="line-price-col"/>
		        <col class="delete-col"/>
		      </colgroup>
		      <thead>
		        <tr>
		          <th class="cart-img-col"></th>
		          <th width="65%">Item</th>
		          <th width="10%">Pre�o</th>
		          <th width="10%">Quantidade</th>
		          <th width="10%">Total</th>
		          <th width="5%"></th>
		        </tr>
		      </thead>
		      <tbody>
		      	<c:forEach items="${carrinhoCompras.itens}" var="item">
		      		<tr>
			          <td class="cart-img-col">
			          	<img src="<c:url value="${item.produto.sumarioPath}" />" width="71px" height="100px"/>
		          	  </td>
			          <td class="item-title">${item.produto.titulo}</td>
			          <td class="numeric-cell">R$ ${item.preco}</td>
			          <td class="quantity-input-cell"><input type="number" min="0" id="quantidade" name="quantidade" value="${carrinhoCompras.getQuantidade(item)}"/></td>
			          <td class="numeric-cell">${carrinhoCompras.getTotal(item)}</td>
			          	<td>
						    <form:form action="${s:mvcUrl('CCC#remover').arg(0,item.produto.id).arg(1,item.tipoPreco).build()}" method="post">
						        <input type="image" src="resources/imagens/excluir.png" alt="Excluir" title="Excluir" />
						    </form:form>
						</td>
					</tr>
		      	</c:forEach>
		      </tbody>
			      <tfoot>
			        <tr>
			          <td colspan="3">
			          	<form:form action="${s:mvcUrl('PC#finalizar').build()}" method="post">
			          		<input type="submit" id="checkout" class="checkout" name="checkout" value="Finalizar compra" />
			          	</form:form>	
		          	  </td>
			          <!-- <td class="quantity-input-cell"><input type="submit" class="update-cart" disabled="disabled" name="update" value=""/></td> -->
			          <td class="numeric-cell">${carrinhoCompras.total}</td>
			          <td></td>
			          <td></td>
			        </tr>
			      </tfoot>
		    </table>
		  
		  <h2>Voc� j� conhece os outros livros da Casa do C�digo?</h2>
		  <ul id="collection" class="related-books">          
		      <li class="col-left">
		        <a href="/products/livro-plsql" class="block clearfix book-suggest" data-book="PL/SQL: Domine a linguagem do banco de dados Oracle">
		          <img width="113px" height="160px" src="http:////cdn.shopify.com/s/files/1/0155/7645/products/plsql-featured_compact.png?v=1434740236" alt="PL/SQL: Domine a linguagem do banco de dados Oracle"/>
		        </a>
		      </li>          
		  </ul>
		  
		  <h2><a href="http://www.casadocodigo.com.br">Veja todos os livros que publicamos!</a></h2>
		</section> 
</tags:pageTemplate>
