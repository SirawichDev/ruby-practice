require_relative 'crypter'
class Student
  include Crypter
  attr_accessor :first_name,:last_name,:email,:username
  attr_reader :password

  @first_name
  @last_name
  @email
  @username
  @password

  def initialize(firstname,lastname,email,username,password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First Name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email: #{@email}"
  end
end

sirawich = Student.new("Sirawich","Voungchuy","sirawit0676@gmail.com","sirawit0676","1w2er34t5y")

hash_password = sirawich.create_hash_digest(sirawich.password)
p hash_password
