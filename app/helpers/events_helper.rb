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
  
  def getUpcomingEvents()
    return Event.where("time >= ?", Time.now.beginning_of_day).all
  end
end
