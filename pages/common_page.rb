class CommonPage
  extend Capybara::DSL
  include Capybara::DSL


  def go_to(destination_url)
    visit(destination_url)
  end

end