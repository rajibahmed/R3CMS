module ApplicationHelper

  def title
    base = "Sample Application"
    if @title.blank?
      base
    else
      @title
    end 
  end

  def hello
    #all the instance variables are available here
    
  end
end
