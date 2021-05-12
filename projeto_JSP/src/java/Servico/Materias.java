
package Servico;

public class Materias {
 String Nome, professor, horas;   

    public Materias(String Nome, String professor, String horas) {
        this.Nome = Nome;
        this.professor = professor;
        this.horas = horas;
    }

    public String getNome() {
        return Nome;
    }

    public String getProfessor() {
        return professor;
    }

    public String getHoras() {
        return horas;
    }
 
 
}
