module EventsHelper
  def spotsLeft(event)
    return event.spotsAvailable - event.event_attendees.length
  end
  
  def canSignUp(event)
    if (spotsLeft(event) == 0)
      return false
    else
      return true
    end
  end
  
  def signUp(event)
    if user_signed_in?
      if canSignUp(event)
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
  
end
