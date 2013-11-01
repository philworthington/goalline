require "test_helper"

feature "create a new play" do
  scenario "As a user I want to create a new play in my goal's playbook with a name that is over 35 characters" do

    # Given a user creates a new play
    new_goal

    # User creates new play in that goal's playbook
    click_on "Create Plays"

    fill_in "Play", with: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    fill_in "Notes", with: "notes1000"
    click_on "Create Play"

    # I should see the goal's playbook
    page.text.must_include "Play is too long (maximum is 35 characters)"

  end
end
