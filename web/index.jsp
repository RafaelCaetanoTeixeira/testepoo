<%-- 
    Document   : index
    Created on : 12 de jun. de 2021, 20:10:57
    Author     : Rafael
--%><%@page import="db.Disciplinas"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!--Um quadro com seu número de matrícula, nome completo, semestre em que ingressou na Fatec e o link de seu perfil no GitHub-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ínicio</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>RAFAEL CAETANO TEIXEIRA</h1>
        <h2>RA: 1290481922039</h2>
        <h3>Semestre de ingresso na Fatec: 08/19</h3>
        <a href="https://github.com/RafaelCaetanoTeixeira">Github</a>
        
        <hr/>
        
        <% String login = (String) session.getAttribute("user.login");%>
        <%if(login == null){%>
            <div>Esta página é restrita a usuários logados.</div>
        <%}else{%>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Nota P1</th>
                <th>Nota P2</th>
                <th>Média</th>
            </tr>
            <%for(Disciplinas disciplina: Disciplinas.getDisciplinas()){%>
                <tr>
                    <td><%= disciplina.getNome()%></td>
                    <td><%= disciplina.getNotap1()%></td>
                    <td><%= disciplina.getNotap2()%></td>
                    <td> <%=(disciplina.getNotap1() + disciplina.getNotap2()) / 2 %></td>
                </tr>
            <%}%>
        </table>
        <%}%>
    </body>
</html>