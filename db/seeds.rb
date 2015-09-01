# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Player.delete_all
Category.delete_all
Questionnaire.delete_all
VideoClue.delete_all
# Game_Stat.delete_all

Player.create({user_name:'caddyshack3', score: 0, password_digest:'corinacorina' })
Player.create({user_name:'maryjane9', score: 0, password_digest: 'nicety'})
Player.create({user_name:'admin', score: 0, password_digest:'9905', role:'admin'})

Category.create({name:'Music'})
Category.create({name:'TV'})
Category.create({name:'Movies'})
Category.create({name:'Games'})

Questionnaire.create({question: "In what year did MTV (Music Television) premiere and what was the first music video the channel aired?", choices:['1982 Michael Jackson Bille Jean', '1984 Madonna Like a virgin', '1981 The Buggles Video Killed The Radio Star'], correct_answer:"1981 The Buggles Video Killed The Radio Star", category_id:1})
Questionnaire.create({question: "This sitcom featured four girls living under one roof. They attended the same boarding school, ran a shop together and reside in a town called Peekskill." , choices:['Designing Women', 'The Facts of Life', 'Girlfriends'], correct_answer:'The Facts of Life', category_id: 2})
Questionnaire.create({question: "This martial arts film premiere in 1985 which featured a young man who studies Bruce Lee's techniques while on the search for his master. This was set in New York City." , choices:['The Last Dragon', 'The Karate Kid', 'Big Trouble in Little China'], correct_answer:'The Last Dragon', category_id: 3})
Questionnaire.create({question:"This game launched in 1991 on Sega Genesis which the player's mission is to collect as many golden rings as possible", choices:['Battletoads', 'Sonic The Hedgehog', 'Jewel Master'], correct_answer: "Sonic The Hedgehog", category_id:4})


VideoClue.create({name:'The Buggles-Video Killed The Radio Star', video_url: '<iframe id="video" src="https://www.youtube.com/embed/ZPEwluSNzgc?start=80&autoplay=1&showinfo=0&controls=0" frameborder="0" allowfullscreen></iframe>', question_id:1})
VideoClue.create({name:'The Facts of Life', video_url:'<iframe id="video" src="https://www.youtube.com/embed/43W74emskeQ?start=197&autoplay=1&showinfo=0&controls=0" frameborder="0" allowfullscreen></iframe>', question_id:2})
VideoClue.create({name:'The Last Dragon', video_url:'<iframe id="video"  src="https://www.youtube.com/embed/ZiRHu1JjpI0?start=192&autoplay=1&showinfo=0&controls=0" frameborder="0" allowfullscreen></iframe>', question_id:3})
VideoClue.create({name:'Sonic The Hedgehog', video_url:'<iframe id="video" src="https://www.youtube.com/embed/CqOlpQ7sepE?start=145&autoplay=1&showinfo=0&controls=0" frameborder="0" allowfullscreen></iframe>', question_id:4})