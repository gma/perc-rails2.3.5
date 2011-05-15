module ApplicationHelper
  def nav_link_to(text, path)
    html_classes = if (path == request.path) 
      { :class => 'active' }
    else
      {}
    end
    link_to text, path, html_classes
  end
end
