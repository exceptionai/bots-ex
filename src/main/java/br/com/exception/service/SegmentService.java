package br.com.exception.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.exception.model.SegmentModel;
import br.com.exception.repository.SegmentRepository;

@Service
@Transactional
public class SegmentService {
	@Autowired SegmentRepository repository;
	
	public void save(SegmentModel segment) {
		repository.save(segment);
	}
	
	public List<SegmentModel> listAll() {
		return (List<SegmentModel>) repository.findAll();
	}
	
	public SegmentModel get(Long id) {
		return repository.findById(id).get();
	}
	
	public void delete(Long id) {
		repository.deleteById(id);
	}	
}
