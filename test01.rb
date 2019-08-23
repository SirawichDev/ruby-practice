
users = [
    {username: "sirawich", password: "1w2e"},
    {username: "orwen", password: "ewqwe"},
    {username: "popos", password: "lolo"}
]

temp = 1
def auth_users(uname,pass,users)
  users.each do |user|
    if user[:username] == uname && user[:password] == pass
      return uname
    end
  end
  puts "Not correct please try again"
end
puts "Authen Process"
while temp != 3
  puts "Username: "
  username = gets.chomp
  puts "Password: "
  password = gets.chomp
  auth_checked = auth_users(username,password,users)
  puts "Welcome Back #{auth_checked}"
end