# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Member.create(name: "Member 1",joining_date: Date.today - 1.year,average_score: 0,phone_number: "1234567890")
Member.create(name: "Member 2",joining_date: Date.today - 2.year,average_score: 0,phone_number: "2234567890")
Member.create(name: "Member 3",joining_date: Date.today - 3.year,average_score: 0,phone_number: "3234567890")
Member.create(name: "Member 4",joining_date: Date.today - 4.year,average_score: 0,phone_number: "4234567890")
Member.create(name: "Member 5",joining_date: Date.today - 5.year,average_score: 0,phone_number: "5234567890")
Member.create(name: "Member 6",joining_date: Date.today - 6.year,average_score: 0,phone_number: "6234567890")
Member.create(name: "Member 7",joining_date: Date.today - 7.year,average_score: 0,phone_number: "7234567890")
Member.create(name: "Member 8",joining_date: Date.today - 8.year,average_score: 0,phone_number: "8234567890")
Member.create(name: "Member 9",joining_date: Date.today - 9.year,average_score: 0,phone_number: "9234567890")
Member.create(name: "Member 10",joining_date: Date.today - 1.month,average_score: 0,phone_number: "10234567890")
Member.create(name: "Member 11",joining_date: Date.today - 2.month,average_score: 0,phone_number: "124567890")
Member.create(name: "Member 12",joining_date: Date.today - 3.month,average_score: 0,phone_number: "1454567890")
Member.create(name: "Member 13",joining_date: Date.today - 4.month,average_score: 0,phone_number: "1234567890")
Member.create(name: "Member 14",joining_date: Date.today - 5.month,average_score: 0,phone_number: "1235457890")
Member.create(name: "Member 15",joining_date: Date.today - 6.month,average_score: 0,phone_number: "1234566690")
Member.create(name: "Member 16",joining_date: Date.today - 7.month,average_score: 0,phone_number: "1234567866")
Member.create(name: "Member 17",joining_date: Date.today - 8.month,average_score: 0,phone_number: "123456784354")
Member.create(name: "Member 18",joining_date: Date.today - 9.month,average_score: 0,phone_number: "1234567845")
Member.create(name: "Member 19",joining_date: Date.today - 10.month,average_score: 0,phone_number: "12345673450")
Member.create(name: "Member 20",joining_date: Date.today - 10.year,average_score: 0,phone_number: "1234564590")

(1..100).each do |number|
	Match.create(title: "Match #{number}",held: DateTime.now - (rand * 1000),location: "USA")
end

players = [*1..10]
index = 1
(1..100).each do |number|
	score1 = rand * 100
	score2 = rand * 100
	opponent = ([*11..20] - [number]).sample
	index = number/10 if players.include?(number/10)
	first_player = index
	MatchMember.create(match_id: number,member_id: first_player,score: score1,result: score1 > score2 ? 1 : 0)
	MatchMember.create(match_id: number,member_id: opponent,score: score2,result: score2 > score1 ? 1 : 0)
end