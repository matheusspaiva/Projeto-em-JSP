package Servico;

public class TabelaS {

    public TabelaS() {
    }
    
   String Tabela="";
  void Status(){
      
      Tabela+="<h4>De acordo com suas notas o seu status pode ser: </h4><br><br>";
       Tabela+="<table border=\"2\" cellpadding=\"5\" width=\"300\"  cellspacing=\"1\"> ";
       Tabela+=         "<tr><td bgcolor=\"#0099cc\">Media </td><td bgcolor=\"#0099cc\"><p>Status</b></td></tr>";
       Tabela+=         "<tr><td>abaixodo de 4,0</td><td >Reprovado</td></tr>";
       Tabela+=         "<tr><td >Entre 4,0 e 5,9</td><td >recupeção</td></tr>";
       Tabela+=         "<tr><td >maior ou igual a 6,0</td><td >Aprovado</td></tr>";
       Tabela+=     "</table>";
      
  }
  
  public String VoltarTabela(){
   Status();
    return Tabela;
  }
}
