require 'capybara/cucumber'


Capybara.default_driver = :selenium

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end


Capybara.default_driver = :chrome
Capybara.javascript_driver = :chrome

