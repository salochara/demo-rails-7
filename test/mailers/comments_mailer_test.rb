require "test_helper"

class CommentsMailerTest < ActionMailer::TestCase
  test "submitted" do
    mail = CommentsMailer.submitted(Comment.first)
    assert_equal "New comment added!", mail.subject
    assert_equal ["salomon@hey.com"], mail.to
    assert_equal ["from@example.com"], mail.from
  end

end
