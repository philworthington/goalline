require "test_helper"

feature "edit a goal" do
  scenario "As a user I want to edit one of my goals" do

    # Given a user creates a new play
    new_goal

    # User edits that goal
    click_on "Edit"

    fill_in "Name", with: "play1001"
    click_on "New Goalline"

    # I should see the goal's playbook index
    page.text.must_include "Goal was successfully updated."
  end
end
