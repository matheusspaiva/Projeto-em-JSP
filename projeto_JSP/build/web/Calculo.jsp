<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="Paginaerro.jsp"%>
<%@page import="Servico.Aluno"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
                
             String nome,turma,status, materia;
             int idade;
             float av1,av2,media;
                nome = request.getParameter("nome");
                turma = request.getParameter("turma");
                materia = request.getParameter("materia");
                idade = Integer.parseInt(request.getParameter("idade"));
                av1 = Float.parseFloat(request.getParameter("av1"));
                av2 = Float.parseFloat(request.getParameter("av2"));
                if(av1<0 || av1>10 || av2<0 || av2>10){
                    out.print("As notas estão fora do padrão<br>");
                    out.print("entre 0 e 10");
                }else{
                media = (av1 +av2 ) / 2;
                if(media<4.0){
                    status= "Reprovado";
                }else if(media>=4 && media <6.0){
                    status="Recuperação";
                }else{
                    status="aprovado";
                }
                out.print("<h5> Na materia " + materia +"</h5>");
                 Aluno aluno =   new Aluno(nome,turma,status, idade, av1,av2,media);
                        out.print("<p>Nome: " + aluno.getNome()+ "<br>");
                        out.print("Turma: " + aluno.getTurma()+ "<br>");
                        out.print("Idade: " + aluno.getIdade()+ "<br>");
                        out.print("av1: " + aluno.getAv1()+ "<br>");
                        out.print("av2: " + aluno.getAv2()+ "<br>");
                        out.print("Media: " + aluno.getMedia()+ "<br>");
                        out.print("Situação: " + aluno.getStatus()+ "<br><p>");
                }
                        
                
            
          %> 
    </body>
</html>
