require 'test_helper'

class SlackpostTest < Minitest::Test
  TEST_CHANNEL = 'test_slack'.freeze # test channel goes here

  def test_message_success
    response = Slackpost.send_message('gem test 1', TEST_CHANNEL)
    assert response.code == '200'
  end

  def test_bad_token
    configure_slack_token('T0S/B40/Hk4')
    assert_raises Slackpost::SlackpostError do
      Slackpost.send_message('gem test 2', TEST_CHANNEL)
    end
    configure_slack_token
  end

  def test_bad_channel
    assert_raises Slackpost::SlackpostError do
      Slackpost.send_message('gem test 3', 'foo_bar_baz_channel')
    end
  end
end
