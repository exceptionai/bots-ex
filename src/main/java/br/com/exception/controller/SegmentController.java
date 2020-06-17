package br.com.exception.controller;

import javax.validation.Valid;

import br.com.exception.service.BotService;
import br.com.exception.service.SegmentService;
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

import br.com.exception.model.SegmentModel;

@Controller
@RequestMapping("/segment")
public class SegmentController {
private static final String SEGMENT_FOLDER = "segment/";
	
	@Autowired
	public SegmentService segmentService;
	
	@Autowired
	public BotService botService;
	
	@GetMapping("/form")
	public String open(@RequestParam String page, 
					   @RequestParam(required = false) Long id,
					   @ModelAttribute("segmentModel") SegmentModel segmentModel, 
					   Model model) {
		
		if("segment-edit".equals(page)) {
			model.addAttribute("segmentModel", segmentService.get(id));
		}
		
		model.addAttribute("bots", botService.listAll());

		return SEGMENT_FOLDER + page;
	}

	@GetMapping()
	public String findAll(Model model) {

		model.addAttribute("segments", segmentService.listAll());
		return SEGMENT_FOLDER +  "segments";
	}

	@GetMapping("/{id}")
	public String findById(@PathVariable("id") long id, Model model) {
		
		model.addAttribute("segment", segmentService.get(id));
		return SEGMENT_FOLDER +  "segment-detail";
	}
	
	@PostMapping()
	public String save(@Valid SegmentModel segmentModel, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model) {
		
		if(bindingResult.hasErrors()) {
			model.addAttribute("bots", botService.listAll());
			return SEGMENT_FOLDER + "segment-new";
		}
		
		segmentService.save(segmentModel);
		redirectAttributes.addFlashAttribute("messages", "Segmento cadastrado com sucesso!");
		
		return "redirect:/segment";
	}
	
	@PutMapping("/{id}")
	public String update(@PathVariable("id") long id, @Valid SegmentModel segmentModel, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model) {
		
		if(bindingResult.hasErrors()) {
			model.addAttribute("bots", botService.listAll());
			return SEGMENT_FOLDER + "segment-edit";
		}
		
		segmentModel.setId(id);
		segmentService.save(segmentModel);
		redirectAttributes.addFlashAttribute("messages", "Segmento alterado com sucesso!");
		
		return "redirect:/segment";
	}
	
	@DeleteMapping("/{id}")
	public String deleteById(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
		
		segmentService.delete(id);
		redirectAttributes.addFlashAttribute("messages", "Segmento excluído com sucesso!");

		return "redirect:/segment";
	}
}
