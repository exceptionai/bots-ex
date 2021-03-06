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
import javax.validation.constraints.NotBlank;
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
	@Column(name = "ID_SEGMENT")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEGMENT_SEQ")
	@SequenceGenerator(name = "SEGMENT_SEQ", sequenceName = "SEGMENT_SEQ", allocationSize = 1)
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@Column(name = "NAME")
	@NotBlank(message = "O nome do segmento não pode ser submetido em branco!")
	@Size(min = 3, max = 255, message = "O nome do segmento deve conter de 3 a 255 caracteres.")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@NotNull(message = "Um bot deve ser selecionado")
	@JoinColumn(name = "TB_BOT", nullable = false)
	public BotModel getBot() {
		return bot;
	}

	public void setBot(BotModel bot) {
		this.bot = bot;
	}


}
