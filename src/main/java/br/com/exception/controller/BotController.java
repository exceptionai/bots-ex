package br.com.exception.controller;

import javax.validation.Valid;

import br.com.exception.service.BotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.exception.model.BotModel;
import br.com.exception.model.MessageModel;
import br.com.exception.model.MessageType;

@Controller
@RequestMapping("/bot")
public class BotController {
	
	private static final String BOT_FOLDER = "bot/";
	
	@Autowired
	public BotService botService;
	
	@GetMapping("/form")
	public String open(@RequestParam String page, 
					   @RequestParam(required = false) Long id,
					   @ModelAttribute("botModel") BotModel botModel, 
					   Model model) {
		
		if("bot-editar".equals(page)) {
			model.addAttribute("botModel", botService.get(id));
		}
		
		return BOT_FOLDER + page;
	}
	
	@GetMapping()
	public String findAll(Model model) {

		model.addAttribute("bots", botService.listAll());
		return BOT_FOLDER +  "bots";
	}

	@GetMapping("/{id}")
	public String findById(@PathVariable("id") long id, Model model) {
		
		model.addAttribute("bot", botService.get(id));
		return BOT_FOLDER +  "bot-detalhe";
	}
	
	@PostMapping()
	public String save(@Valid BotModel botModel, BindingResult bindingResult, RedirectAttributes redirectAttributes ) {
		
		if(bindingResult.hasErrors()) {
			return BOT_FOLDER + "bot-novo";
		}
		
		botService.save(botModel);
		MessageModel messages = new MessageModel("Sucesso!","Bot cadastrado com sucesso!",MessageType.success);
		redirectAttributes.addFlashAttribute("message", messages);
		
		return "redirect:/bot";
	}
	
	@PutMapping("/{id}")
	public String update(@PathVariable("id") long id, @Valid BotModel botModel, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
		
		if(bindingResult.hasErrors()) {
			return BOT_FOLDER + "bot-editar";
		}
		
		botModel.setIdBot(id);
		botService.save(botModel);
		
		MessageModel messages = new MessageModel("Sucesso!","Bot alterado com sucesso!",MessageType.success);
		redirectAttributes.addFlashAttribute("message", messages);
		
		return "redirect:/bot";
	}
	
	@DeleteMapping("/{id}")
	public String deleteById(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
		
		botService.delete(id);
		
		MessageModel messages = new MessageModel("Sucesso!","Bot excluído com sucesso!",MessageType.success);
		redirectAttributes.addFlashAttribute("message", messages);

		return "redirect:/bot";
	}

}
