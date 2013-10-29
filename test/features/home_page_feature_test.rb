require "test_helper"

feature "home page" do
  scenario "not logged in" do

    # Given no user logged in
    # When I visit the home page
    visit root_path
    # I should see the login form
    page.must_have_content "Sign in"
  end

  scenario "logged in " do
    # Given a user logged in
    sign_in
    # When I visit the home page
    visit root_path
    # I should see my goals
    page.must_have_content "Goallines"
  end

  scenario "sign up" do
    # Given a user needs to register
    sign_up
    page.must_have_content "Welcome! You have signed up successfully"
  end


end
