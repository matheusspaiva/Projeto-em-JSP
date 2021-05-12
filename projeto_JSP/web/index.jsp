
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Servico.TabelaS"%>
<%@page import="Servico.Materias"%>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                    <%= new TabelaS().VoltarTabela() %>
                
        <div class="Dados">
            <br>
            <p>Dados do aluno</p>
            <form action="Calculo.jsp" method="get" target="result">
                nome: <input type="text" name="nome"> <br><br>
                idade: <input type="text" name="idade"> <br><br>
                materia: <input type="text" name="materia"> <br><br>
                turma: <input type="text" name="turma"> <br><br> 
                av1: <input type="text" name="av1"> <br><br>
                av2: <input type="text" name="av2"> <br><br>
                <input type="submit" name="enviar"> <br><br>
            </form>

        </div>
        <div>
            <%
              out.print("---------Materias do curso-------------<br><br>");
              List <Materias> materia = new ArrayList <Materias>(); 
               materia.add(new Materias("Caculo 1", "Fernando", "40 horas"));
               materia.add(new Materias("Geometria", "alex", "40 horas"));
               materia.add(new Materias("Fisica", "Fernando", "80 horas"));
               for(Materias valor: materia){
                   out.print("Materia: " + valor.getNome() +"<br>");
                   out.print("Professor: " + valor.getProfessor() +"<br>");
                   out.print("Horas curso: " + valor.getHoras()+"<br>");
                   out.print("<br>");
               }
                %>
            <iframe name="result">
                
            </iframe>
                <%
                    out.print("Entre em contato<br><br>");
                    int i,j;
                    String contato[][] = {{"Telefone", "(11)99999-9999"},{"email","faculdade@gmail"},{"endereço","centro"}};
                    
                    for(i=0;i<3;i++){
                        for(j=0;j<2;j++){
                            out.print(contato[i][j]+ " ");
                        }
                        out.print("<br>");
                    }
                    out.print("<br>");
                 %>   
        </div>
    </body>
</html>
