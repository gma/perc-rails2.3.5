# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_perc_session',
  :secret      => 'b59e6a9d5227ee02b8e4aaa6b408809839a8a087c8727434983a2cf174dd69e87cc0a97d7af3c31f8ebedf5a498bde864b2f50fdaa2fdaea41fdff65733cb4f6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
