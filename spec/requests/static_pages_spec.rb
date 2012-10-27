require 'spec_helper'

describe "Static Pages" do

  let(:base_title) { "Twitter App" }

  describe "About Page" do
  	it "should have the h1 'About Us'" do
  		visit '/static_pages/about'
        page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "#{base_title} | About Us")
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
                        :text => "#{base_title} | Contact Us")
    end
  end 
end
