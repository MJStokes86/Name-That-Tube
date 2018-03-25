# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Player.delete_all
Category.delete_all
VideoClue.delete_all
Question.delete_all
Answer.delete_all
# Game_Stat.delete_all

Player.create({user_name:'caddyshack3', score: 0, password_digest: BCrypt::Password.create('corinacorina')})
Player.create({user_name:'maryjane9', score: 0, password_digest: BCrypt::Password.create('nicety')})
Player.create({user_name:'mjstokes86', score: 0, password_digest: BCrypt::Password.create('mjs242630135'), role:'admin'})
Player.create({user_name:'Guest', score: 0, password_digest: BCrypt::Password.create('12345')})

%W(Music TV Movies Games).each do |name|
	Category.create name: name
end


q = Question.create question:"The First One on MTV's Birthday", category_id: 1
q.answers.create text: '1982 | Michael Jackson Bille Jean'
q.answers.create text: '1984 | Madonna Like a Virgin'
q.answers.create text: '1981 | The Buggles Video Killed The Radio Star', correct: true

q = Question.create question: "Bruno Mars The Piano Traveler", category_id: 1
q.answers.create text: 'Grenade' , correct: true
q.answers.create text: 'Just The Way You Are' 
q.answers.create text: 'If I Was Your Man'

q = Question.create question: "The Peekskill Girls", category_id:2
q.answers.create text: 'Designing Women'
q.answers.create text: 'The Facts of Life', correct: true
q.answers.create text: 'Girlfriends'


q = Question.create question: "Master Leroy", category_id:3
q.answers.create text: 'The Last Dragon', correct: true
q.answers.create text: 'The Karate Kid'
q.answers.create text: 'Big Trouble in Little China'


q = Question.create question: "Can't Survive Without the Rings", category_id: 4
q.answers.create text: 'Battletoads'
q.answers.create text: 'Sonic The Hedgehog' , correct: true
q.answers.create text: 'Jewel Master'

q = Question.create question: "Racing Across the Track in a Cycle", category_id: 4
q.answers.create text: 'Mach Rider'
q.answers.create text: 'Extreme-G' 
q.answers.create text: 'Excite Bike', correct: true

q = Question.create question: "Baby Remember My Name in Sweat", category_id: 2
q.answers.create text: 'Glee'
q.answers.create text: 'Fame' , correct: true
q.answers.create text: 'Kid\'s Incorporated'

q = Question.create question: "Johnny's Baby", category_id: 3
q.answers.create text: 'The Hand That Rocks The Cradle'
q.answers.create text: 'She\'s Having a Baby' 
q.answers.create text: 'Dirty Dancing', correct: true

q = Question.create question: "The True Royal Champions", category_id: 1
q.answers.create text: 'Queen', correct: true
q.answers.create text: 'Hall and Oates' 
q.answers.create text: 'The Bee Gees'

q = Question.create question: "Busta Rhymes Action with Jackson", category_id: 1
q.answers.create text: 'Gimme Some More'
q.answers.create text: 'Dangerous' 
q.answers.create text: 'What\'s it Gonna Be', correct: true

q = Question.create question: "This Artist Should Have Found Her New Love", category_id: 1
q.answers.create text: 'Melissa Morgan'
q.answers.create text: 'Jody Watley', correct: true 
q.answers.create text: 'Shannon'

q = Question.create question: " This Crazy Driven Teacher and His Wild and Crazy Students", category_id: 2
q.answers.create text: 'Welcome Back Kotter', correct: true
q.answers.create text: 'Head of the Class' 
q.answers.create text: 'Welcome Freshman'

q = Question.create question: "NYPD in Color", category_id: 2
q.answers.create text: 'NYPD Blue'
q.answers.create text: 'CSI New York' 
q.answers.create text: 'New York Undercover', correct: true

q = Question.create question: "This High School Sitcom has its 'Time Outs'", category_id: 2
q.answers.create text: 'California Dreams'
q.answers.create text: 'Saved By The Bell', correct: true 
q.answers.create text: 'City Guys'

q = Question.create question: "Whoopi's Deadliest Encounter", category_id: 3
q.answers.create text: 'Jumpin\' Jack Flash'
q.answers.create text: 'Ghost', correct: true
q.answers.create text: 'Made in America'

q = Question.create question: "Wallstreet's Best Man", category_id: 3
q.answers.create text: 'Bud Fox - Wallstreet'
q.answers.create text: 'Jordan Belfort - The Wolf of Wallstreet', correct: true
q.answers.create text: 'Sam Rogers - Margin Call'

q = Question.create question: "Jamie Lee Curtis Mom Has Gave a Terrified Screaming Performance", category_id: 3
q.answers.create text: 'Psycho', correct: true
q.answers.create text: 'The Fog' 
q.answers.create text: 'H20: 20 Years Later'

q = Question.create question: "This Tomb Raider II Level is The Longest of The Game", category_id: 4
q.answers.create text: 'Floating Islands'
q.answers.create text: 'Temple of Xian', correct: true
q.answers.create text: 'Dragon\'s Lair'

q = Question.create question: "Fighting Crime in The Streets", category_id: 4
q.answers.create text: 'Street\'s of Rage', correct: true
q.answers.create text: 'Bad Street Brawler' 
q.answers.create text: 'Die Hard'

q = Question.create question: "Breaking The City's Speed Limit", category_id: 4
q.answers.create text: 'California Speed'
q.answers.create text: 'Cruisin\'USA' 
q.answers.create text: 'Rush 2049', correct: true





VideoClue.create question_id: 1, youtube_id: "ZPEwluSNzgc", time: 80
VideoClue.create question_id: 2, youtube_id: "SR6iYWJxHqs", time: 160
VideoClue.create question_id: 3, youtube_id: "FFO7sfGc0Ok", time: 252
VideoClue.create question_id: 4, youtube_id: "5c8wvxAqQts", time: 50
VideoClue.create question_id: 5, youtube_id: "CqOlpQ7sepE", time: 145
VideoClue.create question_id: 6, youtube_id: "fRgMCtaWoSU", time: 106
VideoClue.create question_id: 7, youtube_id: "W3aCAMRjuBM", time: 153
VideoClue.create question_id: 8, youtube_id: "oxCDAs3kbAU", time: 65
VideoClue.create question_id: 9, youtube_id:  "rY0WxgSXdEE", time: 85
VideoClue.create question_id: 10, youtube_id: "-gzg3UqaBEU", time: 120
VideoClue.create question_id: 11, youtube_id: "YQL-B3PNkeI", time: 69
VideoClue.create question_id: 12, youtube_id: "W9RS5RwyN-Q", time: 211
VideoClue.create question_id: 13, youtube_id: "ayCPd_0Y8e0", time: 318 
VideoClue.create question_id: 14, youtube_id: "iO2SirSH7Rg", time: 12
VideoClue.create question_id: 15, youtube_id: "oAb2_-uv41Y", time: 47
VideoClue.create question_id: 16, youtube_id: "wM6exo00T5I", time: 135
VideoClue.create question_id: 17, youtube_id: "qi1f2ADQYzA", time: 41
VideoClue.create question_id: 18, youtube_id: "En_kBR4xx4U", time: 804
VideoClue.create question_id: 19, youtube_id: "ZQ9JPziz7RM", time:75 
VideoClue.create question_id: 20, youtube_id: "vFmNupTgnPQ", time: 105
