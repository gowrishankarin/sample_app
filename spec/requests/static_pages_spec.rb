require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do

    before {visit root_path}

    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    before {visit help_path}

  	it "should have the content 'Help Page'" do
  		expect(page).to have_content('Help Page')
  	end

  	it "should have the base title" do
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App")
  	end

    it "should have a custom page title" do
      expect(page).not_to have_title('| Help')
    end
  end

  describe "About page" do

    before {visit about_path}

  	it "should have the content 'About Us'" do
  		expect(page).to have_content('About Us')
  	end

  	it "should have the base title" do
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App")
  	end

    it "should have a custom page title" do
      expect(page).not_to have_title('| About')
    end
  end

  describe "Contact page" do

    before {visit contact_path}

    it "should have the content 'Contact Page'" do
      expect(page).to have_content("Contact Us")
    end

    it "should have the base title" do 
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should have a custom page title" do
      expect(page).not_to have_title('| Contact')
    end
  end

end

