# create default test user
User.create!(name: "Chatty Bot", email: "chattybot@example.com", password: "12345", password_confirmation: "12345")
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')