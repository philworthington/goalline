require 'simplecov'
SimpleCov.start 'rails'
ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/rails"
require "minitest/focus"

require "minitest/rails/capybara"

require "minitest/colorize"
require "minitest/pride"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def sign_in
    visit new_user_session_path
    fill_in "Email", with: "testy@test.com"
    fill_in "Password", with: "password"
    click_on "Sign in"
  end

  def sign_up
    visit new_user_registration_path
    fill_in "Email", with: "testy@test.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
  end

  def new_goal
    # Given a logged on user
    sign_up

    # Visit new goal page and fill out the form
    visit new_goal_path
    fill_in "Name", with: "Test 1000"
    click_on "New Goalline"

    # I should see the login form
    page.text.must_include 'Goalline created successfully.'
  end

  def new_play
    click_on "Create Plays"

    fill_in "Play", with: "play1000"
    fill_in "Notes", with: "notes1000"
    click_on "Create Play"
  end
end
