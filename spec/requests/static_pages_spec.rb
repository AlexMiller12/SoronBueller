require 'spec_helper'

describe "Static pages" do

	describe "Home page" do

		it "should have the content 'Sample App'" do
		  visit '/static_pages/home'
		  expect(page).to have_content('Sample App')
		end
		it "should have title 'home'" do
			visit '/static_pages/home'
			expect(page).to have_title('home')
		end
	end

	describe "bah" do
		it "should contain 'poo'" do
			visit '/static_pages/bah'
			expect(page).to have_content('poo')
		end
		it "shouldn't contain 'poop'" do
			visit '/static_pages/bah'
			expect(page).not_to have_content('poop')
		end
		it "should have title 'bah'" do
			visit '/static_pages/bah'
			expect(page).to have_title('bah')
		end
	end


end