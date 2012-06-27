module EventsHelper
  def spotsLeft(event)
    return event.spotsAvailable - event.event_attendees.length
  end
  
  def canSignUp(event)
    if (spotsLeft(event) == 0)
      return false;
    else
      return true;
    end
  end
end
