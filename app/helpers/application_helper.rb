module ApplicationHelper
  
  def full_title
    base_title = "Practice App"
    if @title.empty?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
