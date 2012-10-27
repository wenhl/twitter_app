require 'spec_helper'

describe "Static Pages" do
  describe "About Page" do
  	it "should have the h1 'About Us'" do
  		visit '/static_pages/about'
        page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "Twitter App | About Us")
    end
  end 

  describe "Contact Page" do
  	it "should have the h1 'Contact Us'" do
  		visit '/static_pages/contact'
        page.should have_selector('h1', :text => 'Contact Us')
    end
    it "should have the title 'Contact'" do
        visit '/static_pages/contact'
        page.should have_selector('title',
                        :text => "Twitter App | Contact Us")
    end
  end 
end
