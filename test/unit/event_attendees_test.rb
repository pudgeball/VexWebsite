require 'test_helper'

class EventAttendeesTest < ActiveSupport::TestCase
  test "record attributes must not be empty" do
    record = EventAttendees.new
    assert record.invalid?
    assert record.errors[:team_id].any?
    assert record.errors[:event_id].any?
  end
end
