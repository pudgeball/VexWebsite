require 'csv'

module EventsHelper
  def spotsLeft(event)
    return event.spotsAvailable - event.event_attendees.length
  end
  
  def isPastDate(event)
    if event.time >= Time.now.beginning_of_day
      return false
    else
      return true
    end
  end
  
  def isSpotsLeft(event)
    if (spotsLeft(event) == 0)
      return false
    else
      return true
    end
  end
  
  def signUp(event)
    if user_signed_in?
      if isSpotsLeft(event)
        link_to("Sign Up!", signup_path(event.id))
      else
        'All full up!'
      end
    end
  end
  
  def pluralizeTitle(count, title)
    if count > 1
      return title+"s"
    else
      return title
    end
  end
  
  def getUpcomingEvents
    return Event.where("time >= ?", Time.now.beginning_of_day).all
  end
  
  def getCSVFile
    CSV.generate do |csv|
      #Number,Name,City,State,Country,Short Name,School,Sponsor
      csv << ['Number', 'Name', 'City', 'State', 'Country', 'Short Name', 'School', 'Sponsor']
      @event.event_attendees.each do |attendee|
        team = Team.find(attendee.team_id)
        csv << [team.name, team.id, team.school.city, team.school.province, team.school.country, ' ', team.school.name, ' ']
      end
    end
  end
  
end
