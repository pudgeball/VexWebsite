# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

applications = Application.create([{schoolName: 'Burlington Central High School', teamName: 'Awesomenauts', userEmail: 'pudgeball@me.com', userName: 'Nick McGuire'}, {schoolName: 'MMR High School', teamName: 'Hammy', userEmail: 'hammeld@hdsb.ca', userName: 'Dave Hammel'}])

schools = School.create([{name: 'Burlington Central High School', region: 'South'}, {name: 'MMR High School', region: 'South'}])

teams = Team.create([{name:'Awesomenauts', numStudents:4, school_id: schools.first.id}])

events = Event.create([{spotsAvailable:20, region: 'South', date: DateTime.new(2012, 6, 14), name:'VEX HDSB', time: Time.now()}])

users = User.create([{email: 'pudgeball@me.com', name: 'Nick McGuire', role: 'Admin', school_id: schools.first.id, password:'password'}])

event_records = EventRecord.create([{loss:0, win:1, tie:2, event_id:events.first.id, team_id:teams.first.id}])

event_attendees = EventAttendee.create([{event_id: events.first.id, team_id:teams.first.id}])