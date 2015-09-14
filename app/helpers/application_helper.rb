module ApplicationHelper
  def nav_link_to(name, options=nil, html_options=nil, &block)
    nav_options = {}
    nav_options.merge!(class: "active") if controller_name == name.downcase
    content_tag :li, nav_options do
      link_to name, options, html_options, &block
    end
  end
end
