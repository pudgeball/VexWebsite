module PageHelper
  def retrieveTeams(school)
    @teams = []
    school.teams.each do |team|
      @teams.push(team)
    end
    return @teams
  end
  
  def retrieveEvents(teams)
    @events = []
    
    teams.each do |team|
      team.event_attendees.each do |attendee|
        @events.push(attendee.event)
      end
    end
    
    return @events.uniq
  end
end
