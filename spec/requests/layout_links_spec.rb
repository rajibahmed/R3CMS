require 'spec_helper'

describe "LayoutLinks" do
    # 
    # it "should have a home page at '/'" do
    #   visit root_path
    #   page.should have_xpath('.//a',:text=>'Home')
    # end
    # 
    # it "should have a contact page at '/contact'" do
    #   get '/contact'
    #   response.should have_selector('title',:content=>'Contact')
    # end
    # 
    # it "should have a about page at '/about'" do
    #   get '/about'
    #   response.should have_selector('title',:content=>'About')
    # end
    # 
    # 
    # it "should have a  help page at '/help'" do
    #   get '/help'
    #   response.should have_selector('title',:content=>'Help')
    # end
    # it "should have the right links on the layout" do
    #   visit root_path
    #   click_link "About"
    #   response.should have_selector('title', :content => "About")
    # end
    
    it "should have a link" do
      visit root_path
      click_link  "Help"
      
      # pp (page.public_methods - Object.public_methods)
      page.should have_selector("p",:content=>"this the help page")
    end
end
