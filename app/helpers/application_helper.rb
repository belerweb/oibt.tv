module ApplicationHelper
  def controller_stylesheet_link_tag
    stylesheet_link_tag controller_name
  end

  def controller_javascript_include_tag
    javascript_include_tag controller_name
  end
end
