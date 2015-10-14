source 'https://rubygems.org'

ruby '2.2.2'

gem 'rails', '4.2.4'
gem 'pg'

gem "haml-rails", "~> 0.9"
gem 'sass-rails', '~> 5.0'
gem 'jquery-rails'

gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'
gem 'bootstrap_form'

gem 'uglifier', '>= 1.3.0'
gem 'puma'
gem 'responders'

group :development, :test do
  gem 'byebug'
  gem 'pry'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rspec-rails', '~> 3.0'
  gem "teaspoon-mocha"
  # gem 'selenium-webdriver', '~> 2.48.0'
  gem "capybara-webkit", git: "https://github.com/thoughtbot/capybara-webkit.git"
end

group :test do
  gem 'simplecov', :require => false
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
end

gem 'rails_12factor', group: :production
