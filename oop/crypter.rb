require "bundler/inline"

gemfile true do
  source "http://rubygems.org"
  gem "bcrypt"
end

module Crypter
  require "bcrypt"
  puts "Module Crypter ACTIVATED"

  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def create_secure_user(list)
    list.each do |u_record|
      u_record[:password] = create_hash_digest(u_record[:password])
    end
    list
  end

  def verify_password(uname, pass, list)
    list.each do |u_record|
      if u_record[:username] == uname && verify_hash_digest(u_record[:password]) == pass
        return "Hello #{uname} How are you ?"
      end
    end
    "invalid username or password."
  end
end
# puts "Crypt Process...."
#
# puts " =========Login========="
#
# puts "Username: "
# u_get = gets.chomp
# puts "Password: "
# p_get = gets.chomp

