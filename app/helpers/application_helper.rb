module ApplicationHelper
  
  def page_title
    "Photo Bio " + controller.action_name + ": " + controller.controller_name
  end
  
  def main_nav
    links = []
    links << link_to("Home", root_url, :title => "Home")
    links << link_to("Check ti", root_url, :title => "Home")
    links << link_to("About", root_url, :title => "Home")
    
    menu(links)
  end
  
  def menu(links)
    content_tag :ul do
      convert_to_list(links)
    end
  end
  
  def convert_to_list(links)
    a = []
    links.each do |link|
      a << content_tag(:li, link, :class => classy(link, links) )
    end
    a.join('')
  end
  
  def classy(link, links)
    if link == links.first
      return "first"
    elsif link == links.last
      return "last"
    end
  end

end
