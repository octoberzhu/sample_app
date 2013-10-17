require 'spec_helper'

#describe "StaticPages" do
  #describe "GET /static_pages" do
    #it "works! (now write some real specs)" do
      ## Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)
    #end
  #end
#end
describe 'Static pages' do
    describe 'Home page' do
        it "should have the content 'Sample App'" do
            visit '/static_pages/home'
            expect(page).to have_content('Sample App')
        end
        it "Should have the base title" do
            visit '/static_pages/home'
            expect(page).to have_title('Sample App')
        end
        it "Should not have a custom page title" do
            visit '/static_pages/home'
            expect(page).not_to have_title('| Home')
        end
    end
    describe 'Help page' do
        it "Should have the content 'Help'" do
            visit '/static_pages/help'
            expect(page).to have_content('Help')
        end
        it "Should have the right title 'Help'" do
            visit '/static_pages/help'
            expect(page).to have_title('Sample App | Help')
        end
    end
    describe 'About page' do
        it "Should have the content 'About Us'" do
            visit '/static_pages/about'
            expect(page).to have_content('About Us')
        end
        it "Should have the right title 'About Us'" do
            visit '/static_pages/about'
            expect(page).to have_title('Sample App | About Us')
        end
    end

end
