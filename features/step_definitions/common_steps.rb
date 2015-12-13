Given(/^I am on the homepage "([^"]*)"$/) do |site|

  visit(site)

end


When(/^I enter text "([^"]*)" and click "([^"]*)"$/) do |searchTerm, clickBtn|

  fill_in('lst-ib', :with => searchTerm)
  click_button(clickBtn)

end


And(/^click on the "([^"]*)" link$/) do |link|

  find_link(link).click

end


Then(/^I am brought to website "([^"]*)"$/) do |exp_url|

  act_url = current_url
  fail("Expected URL: #{exp_url}\nActual URL: #{act_url}") if (exp_url != act_url)

end


Then(/^I see text$/) do |text|

  assert_text(text)

end


Then(/^I see the following leaders$/) do |leader|

  leaders = leader.split("\n")
  leadership = all('.leadership')

  leadership.each_with_index do |item, index|
    act_leader = item.find('h2').text
    exp_leader = leaders[index]
    fail("Expected leader: #{exp_leader}\nActual leader: #{act_leader}") if (exp_leader != act_leader)
  end
end


And(/^fill out the form$/) do |table|
  # table is a table.hashes.keys # => [:key, :value]
  table.hashes.each do |item|
    fill_in(item[:key], :with => item[:value])
  end

end

