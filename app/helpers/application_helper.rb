module ApplicationHelper
  
  def page_title
    "Photo Bio" + controller.action_name + ": " + controller.controller_name
  end
end
