source 'https://rubygems.org'
ruby '2.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18.4'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# supports heroku
gem 'rails_12factor', group: :production

# authentication 
gem 'devise', '~> 3.5.2'

# for sending email invites
gem 'devise_invitable', '~> 1.5.2'


# makes messages prettier and easy to read
gem 'awesome_print', '~> 1.6', '>= 1.6.1'

# for use with reddis background processing works well with apartment gem as well
gem 'sidekiq', '~> 4.1'

# background email processing
gem 'devise-async', '~> 0.10.1'

# replaces webrick server for production server
gem 'puma', '~> 2.16'

#styling
gem 'bootstrap-sass', '~> 3.3.6'
gem 'simple_form'

# payment processing
gem 'stripe', '~> 1.36'

# fix bundle errors 
gem 'nokogiri'

# for processing stripe events
gem 'stripe_event', '~> 1.5'

# for tenatizing database
gem 'apartment', '~> 1.0', '>= 1.0.2'

# for storing tenant name 
gem 'apartment-sidekiq', '~> 0.2.0'

# create roles
gem "rolify"

# authorization
gem 'cancancan', '1.13.1'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # For forwarding stripe events with localhost

  gem 'ultrahook'

  # open emails in the browser, for testing
	gem 'letter_opener', '~> 1.4', '>= 1.4.1'


end

