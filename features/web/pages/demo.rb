class Demo
  extend Capybara::DSL
  include Capybara::DSL

  def go_to(site)
    page.driver.browser.manage.window.resize_to(1920,1080)
    visit(site)
  end

  def enter_text_in_and_click(search_term, click_btn)
    fill_in('lst-ib', :with => search_term)
    click_button(click_btn)
  end


  def click_on_link(link)
    find_link(link).click
  end

  def check_url(exp_url)
    act_url = current_url
    fail("Expected URL: #{exp_url}\nActual URL: #{act_url}") if (exp_url != act_url)
  end

  def check_leaders(exp_leaders)
    leaders = exp_leaders.split("\n")
    leadership = all('.leadership')

    leadership.each_with_index do |item, index|
      act_leader = item.find('h2').text
      exp_leader = leaders[index]
      fail("Expected leader: #{exp_leader}\nActual leader: #{act_leader}") if (exp_leader != act_leader)
    end
  end

  def check_links(link_group, links)

    @exp_link
    @exp_href

    begin
      link_group = send(link_group.gsub(' ','_').gsub(',', ''))
      within(link_group) do
        links.hashes.each do |link|
          @exp_link = link[:link]
          @exp_href = link[:href]
          link = find('a', :text => @exp_link)
          fail("Expected href: #{@exp_href}\nActual href: #{link[:href]}") if (@exp_href != link[:href])
          fail("Expected link: #{@exp_link}\nActual link: #{link.text}") if (@exp_link != link.text)
        end
      end
    rescue Capybara::ElementNotFound => msg
      fail("Element not found: #{msg}")
    end

  end


  def check_page(exp_page)

    act_page = send(exp_page.downcase.gsub(' ','_'))

  end


  def solutions
    find('.camel-case', :text => 'Solutions')
  end

  def leadership
    find('.camel-case', :text => 'Leadership')
  end

  def careers
    find('.camel-case', :text => 'Careers')
  end

  def contact_us
    find('.camel-case', :text => 'Contact Us')
  end

  def home
    find('.col-sm-8.col-sm-offset-2.text-center', :text => 'We test software')
    find('.col-sm-8.col-sm-offset-2.text-center', :text => 'What quality concerns keep you up at night?')
  end

  def social
    # '.social-bookmarks'
    '.fusion-social-networks-wrapper'
  end

  def engage_empower_ignite
    '.col-sm-7'
  end

  def solutions_header
    '.container .camel-case'
  end

end