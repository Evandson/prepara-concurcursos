package br.ifrn.prepara.modelo;

import java.util.List;

public class Simulado {
	private int id;
	private Concurso concurso;
	private List<Questao> questao;
	private List<Resposta> resposta;
	
	public Simulado() {
		super();
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Concurso getConcurso() {
		return concurso;
	}
	public void setConcurso(Concurso concurso) {
		this.concurso = concurso;
	}
	public List<Questao> getQuestao() {
		return questao;
	}
	public void setQuestao(List<Questao> questao) {
		this.questao = questao;
	}
	public List<Resposta> getResposta() {
		return resposta;
	}
	public void setResposta(List<Resposta> resposta) {
		this.resposta = resposta;
	}
}