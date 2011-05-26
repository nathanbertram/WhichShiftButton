# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_WhichShiftButton_session',
  :secret      => '3b7c78a2b28daddf266616d2ed3145713d1cac3e906edbecda1453d4b3c565f281e9b98a7714c0e1b7c184aade0581250774644404cf4fdeeecec314cc714a3f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
