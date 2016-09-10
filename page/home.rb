class Home

  include Capybara::DSL

  # This method will be called automatically at the time home is created
  def initialize
    visit 'http://todomvc.com/'
    expect(on_page?).to be true
  end

  # just to verify you are on the right page
  def on_page?
    page.has_content?('Helping you')
  end

  def click_ember_link
    # Ember.js link seems to be not working so can't click the link directly, have to go around it
    # click_on 'Ember.js' - this is what I would have used
    visit 'http://todomvc.com/examples/emberjs/index.html'
  end



end
