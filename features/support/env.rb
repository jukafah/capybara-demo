require('capybara/cucumber')


Capybara.default_driver = :selenium

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end


Capybara.default_driver = :selenium_chrome
Capybara.javascript_driver = :selenium_chrome


# CommonPage.new

# module CustomWorld
#
#
#
#   # def driver
#   #   @driver
#   # end
#
#   def common_page
#     CommonPage
#   end
#
# end
#
# World(CustomWorld)