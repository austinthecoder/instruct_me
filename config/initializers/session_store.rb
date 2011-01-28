# Be sure to restart your server when you modify this file.
require 'action_dispatch/middleware/session/dalli_store'

# InstructMe::Application.config.session_store :cookie_store, :key => '_instruct_me_session'
InstructMe::Application.config.session_store :dalli_store,
  :namespace => 'sessions',
  :key => '_instruct_me_session',
  :expire_after => 30.minutes

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# InstructMe::Application.config.session_store :active_record_store
