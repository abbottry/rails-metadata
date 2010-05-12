# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rails-metadata_session',
  :secret      => 'e70cf76a1d079e2f2dcc4ac1e316629090aa73ae5aa4bdaa80ea97c170f5d22a371fa3e1771db2879c075dd2a65ca8e1d0a9fcd0ba7f59afd531591b08b44dce'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
