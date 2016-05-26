<%-- 
    Document   : responsavel_cadastrar
    Created on : 18/03/2016, 01:37:02
    Author     : Rafaela Batista
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../estrutura/header.jspf"/> 
    <body>
        <div class="container-fluid">  
            <jsp:include page="../estrutura/nav_funcionario.jsp"/> 
            <div class="row" ></div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <jsp:include page="../estrutura/tab_funcionario.jspf"/>
                    <!-- Conteudo -->

                    <div class="panel panel-success">
                        <div class="panel-heading">Depositar</div>
                        <div class="panel-body">
                            <form>
                                <div>
                                    <label for="codigo">Aluno</label>
                                    <select class="form-control" name="listaAluno">
                                        <option value="1">João</option>
                                        <option value="2">Ana</option>
                                        <option value="2">Maria</option>
                                        <option value="2">Paula</option>
                                    </select>

                                </div>

                                <div class="form-group">
                                    <label for="nome">Saldo</label>
                                    <input name="saldo" type="text" class="form-control" placeholder="00.00">
                                </div>
                                <div>

                                    <label for="nome">Efetuar Depósito</label>
                                    <input type="text" name="deposito" class="form-control"  placeholder="00.00" required>
                                </div>
                                <button type="button" class="btn btn-primary">Depositar</button> 
                                <div>

                                    <label for="nome">Novo Saldo</label>
                                    <input type="text" name="saldo" class="form-control"  placeholder="00.00">
                                </div>


                                <a href="../index.jsp" class="btn btn-success active" role="button">Voltar</a>
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