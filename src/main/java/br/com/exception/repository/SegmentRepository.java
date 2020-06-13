package br.com.exception.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.exception.model.SegmentModel;

public interface SegmentRepository extends JpaRepository<SegmentModel, Long> {}
