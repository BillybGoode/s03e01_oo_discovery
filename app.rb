require "./lib/user.rb"
require "./lib/event.rb"
require "pry"

#On crée 3 User
User.new("julie@julie.com", 35)
User.new("jean@jean.com", 23)
User.new("claude@claude.com", 75)

#On cherche un des user à partir de son e-mail
user_1 = User.find_by_email("claude@claude.com")

#On peut ensuite utiliser ce user comme on veut. Par exemple pour afficher son age:
puts "Voici l'age du User trouvé : #{user_1.age}"

bday1 = Event.new("2010-10-31 12:00", 30, "my birthday", ['Julie' , 'Jean'])
bday2 = Event.new("2030-10-31 12:00", 120, "my birthday in england", ['July' , 'John'])
bday_soon = Event.new("2020-05-12 18:40", 30, "my birthday", ['Julie' , 'Jean'])

binding.pry