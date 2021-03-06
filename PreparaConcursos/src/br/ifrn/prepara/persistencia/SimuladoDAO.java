package br.ifrn.prepara.persistencia;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.ifrn.prepara.modelo.Concurso;

	public class SimuladoDAO {

		private Connection con = null;
		private final String USER = "postgres";
		private final String PASS = "postgres";
		
		public SimuladoDAO() {
			super();
			try {
				// Carrega o driver do banco de dados na memoria
				Class.forName("org.postgresql.Driver");
				// Solicita que seja estabelecia a conex�o com o banco de dados
				// S�o informados: a URL do banco, o usu�rio do banco e a senha correspondente
				con = DriverManager.getConnection("jdbc:postgresql://localhost/prepara", USER, PASS);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		
		public List<Concurso> listConcursos() {
			if (con != null) {
				try {
					// Cria��o da classe que permite a realiza��o de consultas
					Statement stmt = con.createStatement();
					String SQL = "SELECT * FROM concursos";
					// Realiza��o da consulta ao banco
					ResultSet resultado = stmt.executeQuery(SQL);
					// Extrai os resultados da consulta
					return extraiConcursos(resultado);
				} catch (SQLException e) {
					e.printStackTrace();
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			return null;
		}

		private List<Concurso> extraiConcursos(ResultSet resultado) throws SQLException {
			List<Concurso> lista = new ArrayList<Concurso>();
			while (resultado.next()) {
				Concurso c = new Concurso();
				c.setId(resultado.getInt(1));
				c.setNome(resultado.getString(2));
				c.setDescricao(resultado.getString(3));
				lista.add(c);
			}
			return lista;
		}

	}