require 'test_helper'

class UserTest < ActionMailer::TestCase
  test "password_recovery" do
    mail = User.password_recovery
    assert_equal "Password recovery", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "registration" do
    mail = User.registration
    assert_equal "Registration", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
