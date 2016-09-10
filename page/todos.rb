class Todos

  include Capybara::DSL

  def initialize
    expect(on_page?).to be true
  end

  def on_page?
    page.has_content?('todos') and
    has_css? '#new-todo'
  end

  # adds a new task
  def enter_task(task)
    fill_in 'new-todo', with: task
    find('#new-todo').send_keys :enter
    within '#main' do
      page.has_content?(task)
    end
  end

  # edit an existing task
  def edit_task(task, new_task)
    find(:label,task).double_click
    find(:$DEFAULT_INPUT,'#main').set(new_task)
    find('header').click
  end

  def check_first_task
    find(:xpath, '//*[@id="ember308"]/div/input').click
  end

  # checks every task at once, and either completes or de-completes them
  def check_all_tasks
    find('#toggle-all').click
  end

  #filter the view and just see the completed tasks
  def view_completed
    click_link('Completed')
  end

  def remove_first_task
    #find(:xpath, '//*[@id="ember308"]/div/button').click
    #find(:class, '#destroy').click
    #find('#destroy', visible: false).click
  end

  def clear_all_completed
    click_button('clear-completed')
  end

end