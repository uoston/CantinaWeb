<%-- 
    Document   : responsavel_cadastrar
    Created on : 18/03/2016, 01:37:02
    Author     : Rafaela Batista
--%>
<%@page import="controller.Aluno"%>
<%Aluno aluno = (Aluno) request.getAttribute("aluno");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../estrutura/header_info.jspf"/> 
    <body>
        <div class="container-fluid">  
            <jsp:include page="../estrutura/nav_responsavel.jsp"/> 
            <div class="row" ></div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <jsp:include page="../estrutura/tab_responsavel.jspf"/>
                    <!-- Conteudo -->

                    <div class="panel panel-success">
                        <div class="panel-heading">Inserir Valor</div>
                        <div class="panel-body">
                            <form class="form-horizontal" action="ControlerAluno?opcao=inserirSaldo" method="post">
                                <div class="form-group " >
                                    <label class="col-sm-2 control-label" for="saldo">Saldo</label>
                                    <div class="col-sm-4">
                                        <input type="number" name="saldo" class="form-control"  required="true">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="hidden" name="matricula" class="form-control" value="<%=aluno.getMatricula()%>">
                                </div>
                                <!-- Button -->
                                 <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-primary">Salvar</button>
                                        <a href="ControlerAluno?opcao=consultar" class="btn btn-success active" role="button">Voltar</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>   
                    <!-- Conteudo -->                    
                </div>
                <div class="col-md-2"></div>
            </div>
            <div class="row"></div>
        </div>
    </body>
</html>