require "bundler/inline"

gemfile true do
  source "http://rubygems.org"
  gem "bcrypt"
end
require "bcrypt"

# my_password = BCrypt::Password.create("my password")

# puts my_password
# puts my_password.version
# puts my_password.cost
# puts my_password == "my password"
# puts my_password == "not my password"

my_password = BCrypt::Password.new("$2a$12$Ka9OV6wUlOOHIve288hF1eFQ6S65.goa80OFmwT.QpN6a35n/3dBK")
p my_password == "ss"
