require "test_helper"

feature "create a new play" do
  scenario "As a user I want to create a new play in my goal's playbook" do

    # Given a user creates a new play
    new_goal

    # User creates new play in that goal's playbook
    click_on "Create Plays"

    fill_in "Play", with: "play1000"
    fill_in "Notes", with: "notes1000"
    click_on "Create Play"

    # I should see the goal's playbook index
    page.text.must_include "Goallines"
  end
end
