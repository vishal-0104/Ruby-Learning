class NotFoundError < StandardError
  def initialize(message)
    super(message)
  end
end

class TodoList
  attr_reader :tasks

  def initialize
    @tasks = []
  end

  def add_task(title)
    raise NotFoundError, "Task title can't be empty" if title.strip.empty?

    @tasks << { title: title, completed: false }
  end

  def complete_task(title)
    task = @tasks.find { |t| t[:title] == title }
    raise NotFoundError, "Task not found" unless task

    task[:completed] = true
  end

  def remove_task(title)
    task = @tasks.find { |t| t[:title] == title }
    raise NotFoundError, "Task not found" unless task

    @tasks.delete(task)
  end
end
