<%-- 
    Document   : nav_funcionario
    Created on : 21/03/2016, 22:05:27
    Author     : uoston
--%>
<%@page import="controller.Usuario"%>
<div class="row" >
    <div class="col-md-2"></div>
    <div class="col-md-8"> 
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <ul class="nav navbar-nav navbar-left">
                    <li><a href="../index/index_funcionario.jsp">Home</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li ><a href="#">
                            <%
                                Usuario usuarioFuncionario = (Usuario) session.getAttribute("funcionario");
                                
                                out.print("Ol� " + usuarioFuncionario.getLogin());
                            %>
                            <span class="sr-only">(current)</span></a></li>
                    <li><a class="" href="ControlerUsuario?opcao=false">Sair</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </div>
    <div class="col-md-2"></div>
</div>
