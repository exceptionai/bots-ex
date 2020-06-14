package br.com.exception.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.exception.model.BotModel;
import br.com.exception.repository.BotRepository;

@Service
@Transactional
public class BotService {
	@Autowired BotRepository repository;
	
	public void save(BotModel bot) {
		repository.save(bot);
	}
	
	public List<BotModel> listAll() {
		return (List<BotModel>) repository.findAll();
	}
	
	public BotModel get(Long id) {
		return repository.findById(id).get();
	}
	
	public void delete(Long id) {
		repository.deleteById(id);
	}
}
