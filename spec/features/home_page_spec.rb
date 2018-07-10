require 'rails_helper'

feature 'Home Page' do 
	scenario 'Welcome Message' do 
		visit('/')
		expect(page).to have_content('All Users')
	end	

	scenario 'Create a random user' do 
		visit('/')
		click_on 'New User'
	end
end