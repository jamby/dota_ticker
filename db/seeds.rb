# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
tournament1 = Tournament.create(name: "The Defense 3")
tournament2 = Tournament.create(name: "Starseries V")

team1 = Team.create(team_name: "Team Liquid", country: "USA")
team2 = Team.create(team_name: "Evil Geniuses", country: "USA")
team3 = Team.create(team_name: "Natus Vincere", country: "Ukraine")
team4 = Team.create(team_name: "Team Empire", country: "Russia")
team5 = Team.create(team_name: "No Tidehunter", country: "Sweden")
team6 = Team.create(team_name: "Mousesports", country: "Germany")
team7 = Team.create(team_name: "Fnatic.eu", country: "Europe")
team8 = Team.create(team_name: "Virtus Pro", country: "Russia")

time = Time.now
time = time.change(day: time.day + 1, hour: 12)

tournament1.matches.create(team1_id: team1.id, team2_id: team2.id, start_time: time)
tournament1.matches.create(team1_id: team3.id, team2_id: team4.id, start_time: time.change(hour: 13))
tournament1.matches.create(team1_id: team5.id, team2_id: team6.id, start_time: time.change(hour: 16))
tournament1.matches.create(team1_id: team7.id, team2_id: team8.id, start_time: time.change(day: time.day + 1, hour: 12))

tournament2.matches.create(team1_id: team2.id, team2_id: team7.id, start_time: time.change(hour: 14))
tournament2.matches.create(team1_id: team1.id, team2_id: team3.id, start_time: time.change(hour: 17))
tournament2.matches.create(team1_id: team6.id, team2_id: team8.id, start_time: time.change(day: time.day + 1, hour: 13))
tournament2.matches.create(team1_id: team5.id, team2_id: team4.id, start_time: time.change(day: time.day + 1, hour: 15))