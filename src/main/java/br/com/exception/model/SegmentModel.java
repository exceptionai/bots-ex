package br.com.exception.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "TB_SEGMENT")
public class SegmentModel {
	private long id;
	private String name;
	private BotModel bot;
	
	public SegmentModel() {
	}

	public SegmentModel(long id, String name, BotModel bot) {
		super();
		this.id = id;
		this.name = name;
		this.bot = bot;
	}

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEGMENT_SEQ")
	@SequenceGenerator(name = "SEGMENT_SEQ", sequenceName = "SEGMENT_SEQ", allocationSize = 1)
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	@Column(name = "NAME")
	@NotNull(message = "Nome obrigatório")
	@Size(min = 3, max = 100, message = "O nome do segmento deve conter de 3 a 100 caracteres.")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "TB_BOT", nullable = false)
	public BotModel getBot() {
		return bot;
	}

	public void setBot(BotModel bot) {
		this.bot = bot;
	}
	
	
}
