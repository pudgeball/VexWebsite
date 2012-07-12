require 'test_helper'

class EventTest < ActiveSupport::TestCase
	
  test "Check YML Data is correct" do
	  event = Event.find(1)
	  assert_equal event.name, "Event"
	  assert_equal event.time, DateTime.parse('2012-05-03 21:00:00 UTC')
	  assert_equal event.spotsAvailable, 2
	  assert_equal event.location, '1433 Baldwin Street, Burlington, Ontario, Canada'
	end
	
	test "Event attributes must not be empty" do
		event = Event.new
		assert event.invalid?
		assert event.errors[:name].any?
		assert event.errors[:spotsAvailable].any?
		assert event.errors[:time].any?
		assert event.errors[:location].any?
		assert event.errors[:region].any?
	end
end
