require_relative "crypter"

users = [
  { username: "sirawich", password: "password1" },
  { username: "sirawich2", password: "password2" },
  { username: "sirawich3", password: "password3" },
  { username: "sirawich4", password: "password4" },
]

hashed_users = Crypter.create_secure_user(users)

#if not the same directory
# $LOAD_PATH << "."
# require "crypt_test"
