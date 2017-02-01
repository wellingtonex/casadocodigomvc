<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
  <header id="layout-header">
	    <div class="clearfix container">
	        <a href="${s:mvcUrl('HC#index').build()}" id="logo">
	                            <img src="https://cdn.rawgit.com/alura-cursos/spring-mvc-i-criando-aplicacoes-web-master/master/src/main/webapp/resources/imagens/cdc-logo.svg" />
	        </a>
	        <div id="header-content">
	            <nav id="main-nav">
	                <ul class="clearfix">
	                    <li>
	                        <a href="${s:mvcUrl('CCC#itens').build()}" rel="nofollow"> 
	                            <%-- <fmt:message key="menu.carrinho">
            						<fmt:param value="${carrinhoCompras.quantidade}"/>
        						</fmt:message> --%>
        						
        						<s:message code="menu.carrinho" arguments="${carrinhoCompras.quantidade}"/>
	                        </a>
	                    </li>
	                    <li>
	                    	<a href="/pages/sobre-a-casa-do-codigo" rel="nofollow">
	                    		<fmt:message key="menu.sobre"/>
                    		</a>
                    	</li>	                    
	                </ul>
	            </nav>
	        </div>
	    </div>
	</header>
	<nav class="categories-nav">
		<ul class="container">
			<li class="category">
				<a href="${s:mvcUrl('HC#index').build()}"><fmt:message key="navegacao.categoria.home"/></a>
			</li>
			<li class="category">
				<a href="/collections/livros-de-agile"><s:message code="navegacao.categoria.agile"/></a></li>
			<li class="category">
				<a href="/collections/livros-de-front-end"><s:message code="navegacao.categoria.front_end"/></a></li>
			<li class="category">
				<a href="/collections/livros-de-games"><s:message code="navegacao.categoria.games"/></a>
			</li>
			<li class="category">
				<a href="/collections/livros-de-java"><s:message code="navegacao.categoria.java"/></a>
			</li>
			<li class="category">
				<a href="/collections/livros-de-mobile"><s:message code="navegacao.categoria.mobile"/></a>
			</li>
			<li class="category">
				<a href="/collections/livros-desenvolvimento-web"><s:message code="navegacao.categoria.web"/></a>
			</li>
			<li class="category">
				<a href="/collections/outros"><s:message code="navegacao.categoria.outros"/></a>
			</li>
		</ul>
	</nav>