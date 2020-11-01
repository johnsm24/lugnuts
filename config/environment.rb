# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Turn on CPK
require 'composite_primary_keys'
