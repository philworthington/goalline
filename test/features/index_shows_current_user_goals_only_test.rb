require "test_helper"

feature "goals index" do
  scenario "user should only see their own goals on the index" do

    sign_up

    click_on "New Goal"

    fill_in "Name", with: "Test 100"

    click_on "Create Goal"

    click_on "Back"

    page.text.wont_include "test 3"

  end
end
