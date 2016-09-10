require_relative '../lib/spec_helper'

describe 'Nick Lee - this coding challenge has the following tests:' do

  #test data
  task1 = 'task1'
  task2 = 'task2'
  task1_edit = '_new'

  it 'Go to the home page, then navigate to the Todos page' do
    home_page = Home.new
    home_page.click_ember_link
  end

  describe 'I have an empty Todo list' do
    before(:all) do
      @todo_page = Todos.new
    end

    it 'Add a new Todo item' do
      @todo_page.enter_task(task1)
    end

    it 'Edit the contents of the existing Todo item' do
      @todo_page.edit_task(task1, task1_edit)
    end

    it 'Complete a Todo by checking it' do
      @todo_page.check_first_task
    end

    it 'Reactivate a Todo by unchecking it' do
      @todo_page.check_first_task
    end

    it 'Add a second Todo task' do
      @todo_page.enter_task(task2)
    end

    it 'Complete all Todo tasks at once' do
      @todo_page.check_all_tasks
    end

    it 'Filter the view and see all Completed Todo tasks' do
      @todo_page.view_completed
    end

    it 'Remove a task using its delete button' do
      @todo_page.remove_first_task
    end

    it 'Removes all completed tasks completely' do
      @todo_page.clear_all_completed
    end

  end
end
