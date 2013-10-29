require "test_helper"

feature "goals index" do
  scenario "user should only see their own goals on the index" do

    sign_up

    sign_in
    save_and_open_page
    click_on "New Goal"

    fill_in "Name", with: "Test 100"

    click_on "Create Goal"

    click_on "Back"

    page.must_not_have_content "test 3"

  end
end
