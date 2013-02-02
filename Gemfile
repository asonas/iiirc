source 'https://rubygems.org'

gem 'rails', '3.2.11'

gem 'mysql2'
gem 'omniauth-github'
gem 'rails_config'
gem 'gravtastic'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development do
  gem "tapp"
  gem "awesome_print"
  gem 'pry-rails'
  gem "wirb"
  gem "hirb-unicode"
  gem 'sqlite3'
end

group :development, :test do
  gem "rspec-rails"
  gem "fabrication"
  gem "timecop"
  gem "faker"
  gem "database_cleaner"
  gem "capybara"
  gem "launchy"
  gem 'rb-fsevent', '~> 0.9.1'
  gem "growl" if system('which growlnotify >/dev/null')
  gem "guard-spork"
  gem "guard-rspec"
  gem 'guard-livereload'
end
