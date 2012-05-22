module ApplicationHelper
  
  def full_title
    base_title = "Practice Makes Perfect"
    if @title.nil? or @title.empty?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
