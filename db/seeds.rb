# require 'faker'

# 30.times do
#   user  = Faker::StarWars.character
#   email = user.delete(' ').downcase
#   names = user.split(' ')

#   User.create(
#     email: "#{email}@example.com",
#     first_name: names.first,
#     last_name: names.last,
#     password: 12345678,
#     confirmed_at: DateTime.now
#   )
# end
# user.skip_confirmation!
