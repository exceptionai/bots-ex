package br.com.exception.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.exception.model.BotModel;

@Repository
public interface BotRepository extends JpaRepository<BotModel, Long> {}
