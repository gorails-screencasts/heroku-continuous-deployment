module TodosHelper
  def todo_class(todo)
    "completed" if todo.completed_at?
  end
end
