
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="Erro">

    <section id="index-section" class="container middle">
        <h2>Erro genérico acontecedo!!!</h2>
    </section>
	<p>${exception.message}</p>
    <!-- 
        Mensagem: ${exception.message}
        <c:forEach items="${exception.stackTrace}" var="stk">
            ${stk}
        </c:forEach>    
    -->

</tags:pageTemplate>	
	

