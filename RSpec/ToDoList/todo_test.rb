require 'rspec'
require_relative 'todo'

RSpec.describe TodoList do
  let(:list) { TodoList.new }

  describe "#add_task" do
    it "adds a task to the list" do
      list.add_task("Task 1")
      expect(list.tasks).to include({ title: "Task 1", completed: false })
    end

    it "raises an error when adding a task with an empty title" do
      expect { list.add_task("") }.to raise_error(NotFoundError, "Task title can't be empty")
    end
  end

  describe "#complete_task" do
    it "marks a task as complete" do
      list.add_task("Task 1")
      list.complete_task("Task 1")
      expect(list.tasks).to include({ title: "Task 1", completed: true })
    end

    it "raises an error if the task is not found" do
      expect { list.complete_task("Nonexistent Task") }.to raise_error(NotFoundError, "Task not found")
    end
  end

  describe "#remove_task" do
    it "removes a task from the list" do
      list.add_task("Task 1")
      list.remove_task("Task 1")
      expect(list.tasks).not_to include({ title: "Task 1", completed: false })
    end

    it "raises an error if the task to be removed is not found" do
      expect { list.remove_task("Nonexistent Task") }.to raise_error(NotFoundError, "Task not found")
    end
  end
end
