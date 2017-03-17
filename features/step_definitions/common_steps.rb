# Given(/^I am on the homepage "([^"]*)"$/) do |site|
#
#   # @page = Demo.new
#   # @page.go_to(site)
#
# end
#
#
# When(/^I enter text "([^"]*)" and click "([^"]*)"$/) do |search_term, click_btn|
#
#   @page.enter_text_in_and_click(search_term, click_btn)
#
# end
#
#
# And(/^click on the "([^"]*)" link$/) do |link|
#
#   @page.click_on_link(link)
#
# end
#
#
# Then(/^I am brought to website "([^"]*)"$/) do |exp_url|
#
#   @page.check_url(exp_url)
#
# end
#
#
# Then(/^I see text$/) do |text|
#
#   assert_text(text)
#
# end
#
#
# Then(/^I see the following leaders$/) do |leader|
#
#   @page.check_leaders(leader)
#
# end
#
#
# And(/^fill out the form$/) do |table|
#   # table is a table.hashes.keys # => [:key, :value]
#   table.hashes.each do |item|
#     fill_in(item[:key], :with => item[:value])
#   end
#
# end
#
#
# Then(/^the following "([^"]*)" links are present$/) do |link_group, links|
#   # table is a table.hashes.keys # => [:link, :href]
#   @page.check_links(link_group, links)
#
# end
#
# Then(/^I am on the "([^"]*)" page$/) do |exp_page|
#
#   @page.check_page(exp_page)
#
# end
#
# Given(/^I go to the homepage$/) do
#   pending
# end
#
# And(/^I see the service menu link in the header$/) do
#   pending
# end
#
# When(/^I click the service menu link in the header$/) do
#   pending
# end
#
# Then(/^I see the following elements in the services flyout$/) do |table|
#   # table is a table.hashes.keys # => [:element]
#   pending
# end
#
# Then(/^I see the following elements in the "([^"]*)"$/) do |arg, table|
#   # table is a table.hashes.keys # => [:element]
#   pending
# end
#
# And(/^click on "([^"]*)"$/) do |element|
#   @page.click_on(element)
# end
#

def intialize
  puts("init!")
end


Given(/^I am on "([^"]*)"$/) do |destination_url|
  @page = CommonPage.new
  @page.go_to(destination_url)
  # self.common_page.go_to(destination_url)
end



Then(/^I am presented with the "([^"]*)" homepage$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end