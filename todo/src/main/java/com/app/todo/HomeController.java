package com.app.todo;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.app.todo.dao.TodoDao;
import com.app.todo.vo.Todo;

/**
 * Handles requests for the application home page.ss
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	TodoDao dao;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	
		ArrayList<Todo> todoList=dao.selectTodo();
		model.addAttribute("todoList",todoList);
		return "home";
	}
	@RequestMapping(value = "/goReg", method = RequestMethod.GET)
	public String goReg() {
		return "todoReg";
	}
	@RequestMapping(value = "/insertTodo", method = RequestMethod.POST)
	public String insertTodo(Todo todo) {
		dao.insertTodo(todo);
		return "redirect:/";
	}
	@RequestMapping(value = "/updateTodo", method = RequestMethod.POST)
	public @ResponseBody String updateTodo(Todo todo) {
		
		String type=todo.getType();
		int result=0;
		
		if(type.equals("TODO")) {
			todo.setType("DOING");
		}else if(type.equals("DOING")) {
			todo.setType("DONE");
		}else {
			result=dao.deleteTodo(todo);
		}
		result=dao.updateTodo(todo);
		
			return "SUCCESS";
		
	}
	
}
