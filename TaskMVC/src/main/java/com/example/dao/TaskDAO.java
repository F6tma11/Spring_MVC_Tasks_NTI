package com.example.dao;

import com.example.model.Priority;
import com.example.model.Task;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class TaskDAO {

    private List<Task> tasks;

    public TaskDAO(){
        tasks=new ArrayList<>();
        tasks.add(new Task(1,"Buy Milk",false, Priority.HIGH));
        tasks.add(new Task(1,"Buy Tomato",true, Priority.LOW));
        tasks.add(new Task(1,"Study Mvs",false, Priority.HIGH));
    }
    public List<Task> getAllTasks(){
        ArrayList<Task> copyTasks=new ArrayList<>(tasks);
        return copyTasks;
    }

    public void deleteTaskById(int id){
        tasks.remove(id);
    }

    public void updateTask(Task task){
        tasks.add(task.getId(),task);
    }

    public boolean insertTask(Task task){
       return tasks.add(task);
    }

    public Task getTaskById(int id){
        for (Task task:tasks){
            if (task.getId()==id){
                return task;
            }
        }
        return null;
    }

    public List<Task> searchByPriority(String priority){
        ArrayList<Task> copyTasks=new ArrayList<>();
        for (int i=0;i<tasks.size();i++){
            if (tasks.get(i).getPriority().name().equals(priority)){
                copyTasks.add(tasks.get(i));
            }
        }
        return copyTasks;
    }
}
