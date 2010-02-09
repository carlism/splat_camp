# Settings specified here will take precedence over those in config/environment.rb

# The test environment is used exclusively to run your application's
# test suite.  You never need to work with it otherwise.  Remember that
# your test database is "scratch space" for the test suite and is wiped
# and recreated between test runs.  Don't rely on the data there!

# I am putting this in to get through the 
# See http://rails.lighthouseapp.com/projects/8994/tickets/802-eager-load-application-classes-can-block-migration
config.cache_classes = (File.basename($0) == "rake") ? false : true

# Log error messages when you accidentally call methods on nil.
config.whiny_nils = true

# Show full error reports and disable caching
config.action_controller.consider_all_requests_local = true
config.action_controller.perform_caching             = false

# Disable request forgery protection in test environment
config.action_controller.allow_forgery_protection    = false

# Tell Action Mailer not to deliver emails to the real world.
# The :test delivery method accumulates sent emails in the
# ActionMailer::Base.deliveries array.
config.action_mailer.delivery_method = :test

config.gem 'rspec', :lib => false, :version => '>= 1.3.0'
config.gem 'rspec-rails', :lib => false, :version => '>= 1.3.2'
config.gem 'database_cleaner', :lib => false, :version => '>= 0.4.3'
config.gem 'mocha', :lib => false
config.gem 'webrat', :lib => false
config.gem 'cucumber', :lib => false
config.gem 'cucumber-rails', :lib => false
config.gem "thoughtbot-factory_girl", :lib => "factory_girl"

