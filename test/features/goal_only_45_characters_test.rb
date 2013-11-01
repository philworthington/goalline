require "test_helper"

feature "create a new goal more than 45 characters" do
  scenario "As a user I want to create a new goal to achieve that is explained in too much detail" do

    # Given a logged on user
    sign_up

    # Visit new goal page and fill out the form
    visit new_goal_path
    fill_in "Name", with: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    click_on "New Goalline"

    # Error message should indicate goal's can only be 45 characters maximum
    page.text.must_include "Name is too long (maximum is 45 characters)"

  end
end
