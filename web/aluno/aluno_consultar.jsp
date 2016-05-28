<%-- 
    Document   : responsavel_cadastrar
    Created on : 18/03/2016, 01:37:02
    Author     : Rafaela Batista
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controller.Aluno"%>
<%@page import="controller.Responsavel"%>
<%Responsavel responsavel = (Responsavel) request.getAttribute("responsavel");%>
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
                        <div class="panel-heading">Consultar Alunos</div>
                        <div class="panel-body">
                            <form>
                                <div class="form-group">
                                    <label for="nome">Matricula</label>
                                    <input type="text" class="form-control" id="" placeholder="Nome">
                                </div>
                                <div class="form-group">
                                    <label for="nome">Nome</label>
                                    <input type="text" class="form-control" id="" placeholder="Nome">
                                </div>

                                <button type="submit" class="btn btn-primary">Consultar</button>
                                <a class="btn btn-danger" href="../aluno/aluno_excluir.jsp" role="button">Excluir</a>
                                <br>
                            </form>
                            <table class="table table-bordered">
                                <th class="text-center">Nome</th>
                                <th class="text-center">Turma</th>
                                <th class="text-center">Turna</th>
                                <th class="text-center">Saldo</th>
                                <th class="text-center">Situação</th>
                                <th class="text-center">Editar</th>
                                <th class="text-center">Saldo</th>
                                <%
                                    ArrayList<Aluno> listaAluno = responsavel.getListaAluno();
                                    Iterator<Aluno> iterator = listaAluno.iterator();
                                    String sitaucao;
                                    while (iterator.hasNext()) {
                                         Aluno AlunoComplento = (Aluno)iterator.next();
                                         
                                         
                                %>
                                <tr>
                                    <td><%=AlunoComplento.getNome() %></td>
                                    <td><%=AlunoComplento.getTurma() %></td>
                                    <td><%=AlunoComplento.getTurno()%></td>
                                    <td><%=AlunoComplento.getSaldo() %></td>
                                    <% if (AlunoComplento.getSituacao() == 1){
                                            sitaucao = "Desbloqueado";
                                        }else{
                                             sitaucao = "bloqueado";
                                        }    %>
                                    <td><%=AlunoComplento.getSituacao()%></td>
                                    <td class="text-center"><a class="btn btn-default" href="ControlerAluno?opcao=editar&mat=<%= AlunoComplento.getMatricula()%>"  role="button">
                                        <span class="glyphicon glyphicon-edit text-warning" aria-hidden="true"></span></a>
                                    </td>
                                    <td class="text-center"><a class="btn btn-default" href="ControlerAluno?opcao=saldo&mat=<%= AlunoComplento.getMatricula()%>" 
                                                               role="button" data-toggle="tooltip" data-placement="left" title="Adicionar Saldo">
                                        <span class="glyphicon glyphicon-plus-sign text-success" aria-hidden="true" ></span></a>
                                    </td>
                                </tr>
                                <% }
                                %>
                            </table>
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