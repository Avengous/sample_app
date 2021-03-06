require 'spec_helper'

feature "Static Pages" do
  
  context "Home Page" do
    it "Should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    
    it "Should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_title('Ruby on Rails Tutorial Sample App | Home')
    end
  end
  
  context "Help Page" do
    it "Should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "Should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_title('Ruby on Rails Tutorial Sample App | Help')
    end
  end

  context "About Page" do
    it "Should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    
    it "Should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_title('Ruby on Rails Tutorial Sample App | About Us')
    end    
  end
  
end