source 'https://rubygems.org'

gem 'rails', '3.2.14'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :production do
  gem 'rails_12factor'
  gem 'pg'
end

gem "strong_parameters"

gem "pundit"

gem 'bootstrap-sass', github: 'thomas-mcdonald/bootstrap-sass'

gem 'devise'

gem 'omniauth-twitter'

gem 'figaro'

gem "faker"

# Gems used only for assets and not required
# in production environments by default.

gem 'jquery-rails'

gem "minitest-rails"

group :development, :test do
  gem 'sqlite3'
  gem "minitest-rails-capybara"
  gem "minitest-focus"
  gem "minitest-colorize"
  gem "capybara-webkit"
  gem "launchy"
  gem 'simplecov', :require => false, :group => :test
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/splayhenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :test do
  gem "turn"
end

