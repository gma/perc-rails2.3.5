require 'test_helper'

class WorkRequestMailerTest < ActionMailer::TestCase
  test "message" do
    @expected.subject = 'WorkRequestMailer#message'
    @expected.body    = read_fixture('message')
    @expected.date    = Time.now

    assert_equal @expected.encoded, WorkRequestMailer.create_message(@expected.date).encoded
  end

end
