require "test_helper"

feature "create a new play" do
  scenario "As a user I want to create a new play in my goal's playbook" do

    # Given a user creates a new play
    new_goal

    # User creates new play in that goal's playbook
    new_play

    # I should see the goal's playbook
    page.text.must_include "Playbook"
  end
end
