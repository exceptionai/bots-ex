package br.com.exception.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.exception.model.SegmentModel;

@Repository
public interface SegmentRepository extends JpaRepository<SegmentModel, Long> {}
