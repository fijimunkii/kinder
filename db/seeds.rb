# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'somegirl@gmail.com', name: 'just a girl', img_url: 'http://chivethebrigade.files.wordpress.com/2012/08/girls-920-26.jpg', bio: "Sometimes you need to step outside, clear your head and remind yourself of who you are. And where you wanna be. And sometimes you have to venture outside your world in order to find yourself. As for me, I'm happy right where I am. I only wanna be with you. xoxo ... ", location: "New York, NY")
User.create(email: 'anothergirl@gmail.com', name: 'just another girl', img_url: 'http://www.hdwallpaperscool.com/wp-content/uploads/2013/11/nicole-kidman-blue-eyes-3d-girl-hd-images-desktop-wallpapers.jpg', bio: "I'm just a girl whose hair is never right who more then once has fallen on her face who can't stop laughing at something that happened yesterday who cries because sometimes nothing is right but sometimes, i'm just a girl who can't stop smiling because for that moment everything is perfect.", location: "New York, NY")
User.create(email: 'thirdgirl@gmail.com', name: 'third kind girl', img_url: 'http://viewallpaper.com/wp-content/uploads/2013/07/Girls-Blue-HD-Wallapers-2013.jpg', bio: "Im not the comeback girl, the awkward girl, the hipster girl, or the popular girl. I dont want a label unless its your girl.", location: "Bronx, NY")


#  email            :string(255)
#  name             :string(255)
#  img_url          :string(255)
#  birthday         :string(255)
#  bio              :text
