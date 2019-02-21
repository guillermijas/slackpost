module Slackpost
  # Errors that are thrown when the message cannot be delivered.
  class SlackpostError < StandardError
    def initialize(msg = 'Message could not be delivered.')
      super
    end
  end
end
