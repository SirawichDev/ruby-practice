class Student
  #can access
  attr_accessor :first_name, :last_name, :email, :username, :password

  #only read
  #   attr_reader :password, :username

  @first_name
  @last_name
  @email
  @username
  @password

  #do after sirawich = Student.new
  def initialize(first_name, last_name, username, password, email)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end

  #setter for reader
  #   def set_username
  #     @username = "sirawit0676"
  #   end

  #   def set_password
  #     @password = "12345"
  #   end

  #   def first_name(name)
  #     @first_name = name
  #   end
  #   def first_name=(fname)
  #     @first_name = fname
  #   end

  #   def last_name=(lname)
  #     @last_name = lname
  #   end

  #   ## getter
  #   def last_name
  #     @last_name
  #   end

  #   def first_name
  #     @first_name
  #   end

  ##
  # 1 line
  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email: #{@email},
     Password: #{@password}"
  end
end

sirawich = Student.new("Sirawich", "Voungchuy", "sirawit0676", "12345", "sirawit0676@gmail.com")
paer = Student.new("Wanwimon", "Suraphan", "paer0676", "12345", "paer0676@gmail.com")
puts sirawich
puts paer

paer.last_name = sirawich.last_name
puts "Paer is altered"
puts paer
# puts sirawich
# sirawich.first_name = "Sirawich"
# sirawich.last_name = "Voungchuy"
# sirawich.email = "sirawit0676@gmail.com"
# sirawich.username = "sirawit0676"
# sirawich.password = "12345"
# sirawich.set_username
# sirawich.set_password
# puts sirawich.first_name
# puts sirawich.last_name
# puts sirawich.email
# puts sirawich.username
# puts sirawich.password
# # puts sirawich.first_name("sirawich")
# puts sirawich.first_name
# puts sirawich.last_name
# puts sirawich
