package com.example.controllers;

import com.example.dao.TaskDAO;
import com.example.exceptions.TaskNotFoundException;
import com.example.model.Task;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/tasks")
public class TaskController {

    TaskDAO taskDAO;

     public TaskController(TaskDAO taskDAO){
         this.taskDAO=taskDAO;
     }

     @GetMapping
    public String showTasks(Model model){
         model.addAttribute("tasks",taskDAO.getAllTasks());
         return "ShowTasks";
    }

    @GetMapping("/{id}")
    public String showTask(@PathVariable("id") int id,Model model){
         Task task=taskDAO.getTaskById(id);
         if (task==null){
             throw new TaskNotFoundException("Task not found");
         }
         model.addAttribute("task",task);
         return "TaskDetails";
    }

    @GetMapping("/search")
    public  String searchTask(@RequestParam(value = "priority", defaultValue = "HIGH")String priority,Model model){
         model.addAttribute("tasks",taskDAO.searchByPriority(priority));
        model.addAttribute(
                "tasks",
                taskDAO.searchByPriority(priority)
        );
         return "ShowTasks";
    }

    @GetMapping("/new")
    public String newForm(Model model){
         model.addAttribute("newTask",new Task());
         return "addForm";
    }

    @PostMapping
    public String newTask(@Valid @ModelAttribute("newTask")Task newTask, BindingResult bindingResult,Model model){
         if (bindingResult.hasErrors()){
             return "addForm";
         }
         taskDAO.insertTask(newTask);
         return "redirect:/tasks";
    }


}
