class Visit < ApplicationRecord
  validates :problem, presence: true, length: { minimum: 10, maximum: 300 }
  validate :time_must_be_greater_than_time_now
  validate :available_at_is_in_the_future

  def available_at_is_in_the_future
    if date.present? && date <= Date.today
      errors.add(:date, "It can't be in the past")
    end
  end

  def time_must_be_greater_than_time_now
    if time.present? && time < Time.now
      errors.add(:time, 'It must be greater than time now')
    end
  end
end
