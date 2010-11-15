module ApplicationHelper
  
  def page_title
    "Photo Bio " + controller.action_name + ": " + controller.controller_name
  end
  
  def main_nav
    links = []
    links << link_to("Home", root_path, :title => "Home")
    links << link_to("What is This?", what_is_this_path, :title => "What is This?")
    links << link_to("About", about_url, :title => "Home")
    links << link_to("Getting Started", getting_started_url, :title => "Getting Started")
    
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
