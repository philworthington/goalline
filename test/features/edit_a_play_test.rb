require "test_helper"

feature "edit a play" do
  scenario "As a user I want to edit one of my goal's plays" do

    new_goal

    # User creates new play in that goal's playbook
    new_play

    # User edits that play
    click_on "play1000"
    click_on "Edit"
    fill_in "Play", with: "play1001"
    click_on "Create Play"


    # I should see that goal's playbook
    page.text.must_include "Playbook"
  end

  scenario "As a user I want to view my play" do

    new_goal

    # User creates new play in that goal's playbook
    new_play

    # User views that play
    click_on "play1000"

    page.text.must_include "Edit"

  end
end
