source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'
gem 'bootsnap', require: false
gem 'bootstrap', '~> 5.2', '>= 5.2.2'
gem 'importmap-rails'
gem 'jbuilder'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# devise
gem 'bcrypt'
gem 'devise'
gem 'devise-jwt'
gem 'fast_jsonapi'
gem 'jwt'
gem 'rack-cors'

gem 'cancancan', '~> 1.9'
gem 'figaro'
gem 'rubocop'
gem 'sassc-rails', '>= 2.1.0'

gem 'sbuild', '~> 0.0.3'

group :development, :test do
  gem 'bullet'
  gem 'database_cleaner'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rails-controller-testing'
  gem 'rspec-rails'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
