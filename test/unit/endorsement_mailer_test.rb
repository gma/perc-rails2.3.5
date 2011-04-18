require 'test_helper'

class EndorsementMailerTest < ActionMailer::TestCase
  test "message" do
    @expected.subject = 'EndorsementMailer#message'
    @expected.body    = read_fixture('message')
    @expected.date    = Time.now

    assert_equal @expected.encoded, EndorsementMailer.create_message(@expected.date).encoded
  end

end
