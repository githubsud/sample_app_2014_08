# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

SampleApp201408::Application.config.secret_key_base = secure_token

# # Be sure to restart your server when you modify this file.
# 
# # Your secret key is used for verifying the integrity of signed cookies.
# # If you change this key, all old signed cookies will become invalid!
# 
# # Make sure the secret is at least 30 characters and all random,
# # no regular words or you'll be exposed to dictionary attacks.
# # You can use `rake secret` to generate a secure secret key.
# 
# # Make sure your secret_key_base is kept private
# # if you're sharing your code publicly.
# SampleApp201408::Application.config.secret_key_base = '37aa4baa81089e0c4ae32d39409b36c4c6cf8c7774eaa8063347ea7a8966c2570f899c8a22f1072d5535dd3b777d7e7e81c353ea5b3e8b4974438fa29aa2d791'
