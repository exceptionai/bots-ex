package br.com.exception.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "TB_BOT")
public class BotModel {
	
	private long idBot;
	private String name;
	private String welcomeMsg;
	private String farewellMsg;
	private int downtime;
	private String defaultAnswer;
	private List<SegmentModel> segments;
	
	public BotModel() {
	}

	public BotModel(long idBot, String name, String welcomeMsg, String farewellMsg, int downtime,
			String defaultAnswer) {
		super();
		this.idBot = idBot;
		this.name = name;
		this.welcomeMsg = welcomeMsg;
		this.farewellMsg = farewellMsg;
		this.downtime = downtime;
		this.defaultAnswer = defaultAnswer;
	}

	@Id
	@Column(name = "ID_BOT")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "BOT_SEQ")
	@SequenceGenerator(name = "BOT_SEQ", sequenceName = "BOT_SEQ", allocationSize = 1)
	public long getIdBot() {
		return idBot;
	}

	public void setIdBot(long idBot) {
		this.idBot = idBot;
	}

	@Column(name = "NAME")
	@NotNull(message = "� obrigat�rio informar o nome do bot!")
	@Size(min = 3, max = 50, message = "O nome do bot deve conter de 3 a 50 caracteres.")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "WELCOME_MSG")
	@NotNull(message = "� obrigat�rio informar a mensagem de boas vindas!")
	@Size(min = 1, max = 50, message = "A mensagem de boas vindas deve conter de 1 a 50 caracteres.")
	public String getWelcomeMsg() {
		return welcomeMsg;
	}

	public void setWelcomeMsg(String welcomeMsg) {
		this.welcomeMsg = welcomeMsg;
	}

	@Column(name = "FAREWELL_MSG")
	@NotNull(message = "� obrigat�rio informar a mensagem de despedida!")
	@Size(min = 1, max = 50, message = "A mensagem de despedida deve conter de 1 a 50 caracteres.")
	public String getFarewellMsg() {
		return farewellMsg;
	}

	public void setFarewellMsg(String farewellMsg) {
		this.farewellMsg = farewellMsg;
	}

	@NotNull(message = "� obrigat�rio informar o downtime do bot!")
	@Min(value = 1000, message = "O downtime m�nimo � 1000.")
	@Max(value = 1000000, message = "O downtime m�ximo � 1000000.")
	public int getDowntime() {
		return downtime;
	}

	public void setDowntime(int downtime) {
		this.downtime = downtime;
	}

	@Column(name = "DEFAULT_ANSWER")
	@NotNull(message = "� obrigat�rio informar a mensagem padr�o!")
	@Size(min = 1, max = 50, message = "A mensagem padr�o deve conter de 1 a 50 caracteres.")
	public String getDefaultAnswer() {
		return defaultAnswer;
	}

	public void setDefaultAnswer(String defaultAnswer) {
		this.defaultAnswer = defaultAnswer;
	}

	@OneToMany(mappedBy = "bot")
	public List<SegmentModel> getSegments() {
		return segments;
	}

	public void setSegments(List<SegmentModel> segments) {
		this.segments = segments;
	}
	
	
}
