source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.6'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

# custom defined gems
gem 'simple_form', '~> 4.0', '>= 4.0.1'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'jquery-rails'
gem 'devise', '~> 4.4', '>= 4.4.3'
gem 'paperclip', '~> 6.0'
gem 'aws-sdk', '~> 3.0', '>= 3.0.1'
# Use Omniauth Google plugin
gem 'omniauth-google-oauth2', '~> 0.4.1'
# Use ActiveRecord Sessions
gem 'activerecord-session_store', '~> 1.0'


group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'

  # Use Dotenv for environment variables
  gem 'dotenv', '~> 2.2.1'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg', '0.18.4'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
