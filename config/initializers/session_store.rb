# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_GTD_session',
  :secret      => '4088dd208ddd3ae87a09c222d736cda35bbe040fba5bb46a300d41acd99147db420ab332d090ac21c38b3592ac296a022cf56dd3e7f5869e035382c482b16992'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
