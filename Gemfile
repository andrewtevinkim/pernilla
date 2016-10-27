source 'https://rubygems.org'
ruby "2.0.0"

# Rails 4.0.0 (K.I.S.S.)
gem 'rails', '4.0.0'

# server/db things
gem 'sqlite3'
# gem 'pg' # uncomment and implement postgres over sqlite 3 for maximum saving/loading speed
gem 'thin'
gem 'deploy', :git => 'git://github.com/eszyn/deploy.git'
gem 'certified' # for weird Open SSL error at St. Oberholz

# Front-end shortcuts
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'sass-rails', '~> 4.0.0'
gem 'bootstrap-sass-rails'
gem 'font-awesome-rails'
gem 'coffee-rails' # CoffeeScript?
gem 'uglifier', '>= 1.3.0'

# Paginate
gem 'will_paginate', '3.0.3'
gem 'bootstrap-will_paginate'

# Security
gem 'bcrypt-ruby', '3.0.1'

# Seeding
gem 'faker', '1.0.1'

# production/development/test-specific
group :production do
  gem 'therubyracer', platforms: :ruby
end
group :development, :test do
  gem 'rspec-rails', "~> 2.14"
  gem 'factory_girl_rails'
  gem 'better_errors'
  gem 'binding_of_caller'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'email_spec'
end

# Authentication
gem 'devise'
gem 'cancan'
gem 'rolify'

# Kewl URLz
gem 'friendly_id', '5.0.3'

# Rename your app
gem 'rename'

# Easy Mailer
gem 'mail_view', "~> 2.0.4"
gem 'premailer-rails'

# Parsing
gem 'nokogiri'