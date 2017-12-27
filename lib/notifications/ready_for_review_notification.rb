require "notifications/notification"

class ReadyForReviewNotification
  def initialize(issue:)
    @issue = issue
  end

  def deliver
    Notification.new(
      issue: issue,
      action: ":mag: Review"
    ).deliver
  end

  private

    attr_reader :issue
end