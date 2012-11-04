ENV["RAILS_ENV"] ||= 'test'


require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

require 'capybara/rspec'
require 'shoulda-matchers'
require 'fabrication/syntax/make'

require 'simplecov'
SimpleCov.start 'rails' do
  # Define the minimum coverage acceptable for project integration
  # minimum_coverage 100
end

Dir[Rails.root.join("spec/initializers/**/*.rb")].each { |f| require f }
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  config.order = "random"
  config.infer_base_class_for_anonymous_controllers = false
  config.use_transactional_fixtures = false
end
