require "test_helper"

feature "Playbook" do
  scenario "As a user I want to view my goal's playbook" do

    # Create a goal
    new_goal

    # Go to your goals index
    click_on "Back"

    # Click on your goal's name
    click_on "Test 1000"

    # You should see your playbook for that goal
    page.text.must_include "Playbook"

  end
end
