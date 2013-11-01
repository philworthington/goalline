require "test_helper"

feature "home page" do
  scenario "not logged in" do
    # Given no user logged in
    # When I visit the home page
    visit root_path
    # I should see the login form
    page.text.must_include "Sign in"
  end

  scenario "sign up" do
    # Given a user needs to register
    sign_up

    page.text.must_include "Goallines"
  end

end
