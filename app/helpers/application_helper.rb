module ApplicationHelper

  def title
    base = "Sample Application"
    if @title.blank?
      base
    else
      @title
    end 
  end

  
end
