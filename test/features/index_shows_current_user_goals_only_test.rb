require "test_helper"

feature "goals index" do
  scenario "user should only see their own goals on the index" do

    sign_up

    visit new_goal_path

    fill_in "Name", with: "Test 100"

    click_on "New Goalline"

    click_on "Back"

    page.text.wont_include "test 3"

  end
end
