module PageHelper
  def retrieveTeams(school)
    @teams = Array.new
    school.teams.each do |team|
      @teams.push(team)
    end
    return @teams
  end
  
  def retrieveEvents(teams)
    @events = Array.new
    
    teams.each do |team|
      team.event_attendees.each do |attendee|
        @events.push(attendee.event)
      end
    end
    
    return @events.uniq
  end
  
  def filterForUpcoming(events)
    return events.select { |event| event.time >= Time.now.beginning_of_day }
  end
end
