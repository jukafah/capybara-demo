Given(/^I am on the homepage "([^"]*)"$/) do |site|

  visit(site)

end


When(/^I search for "([^"]*)"$/) do |searchTerm|

  fill_in('lst-ib', :with => searchTerm)

end


And(/^click on the "([^"]*)" link$/) do |linkToClick|

  find_link(linkToClick).click

end


Then(/^I am brought to website "([^"]*)"$/) do |exp_url|

  if (exp_url != current_url)
    fail("Expected URL: #{exp_url}\nActual URL: #{current_url}")
  end

end


