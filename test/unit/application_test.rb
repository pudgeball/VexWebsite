require 'test_helper'

class ApplicationTest < ActiveSupport::TestCase
  test "application attributes must not be empty" do
    application = Application.new
    assert application.invalid?
    assert application.errors[:schoolName].any?
    assert application.errors[:teamName].any?
    assert application.errors[:userName].any?
    assert application.errors[:userName].any?
  end
end
