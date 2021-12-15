# frozen_string_literal: true

class Visit < ApplicationRecord
  has_one :appointment

  validates :problem, presence: true, length: { minimum: 7, maximum: 300 }
  validate :time_must_be_greater_than_time_now
  validate :available_at_is_in_the_future

  def available_at_is_in_the_future
    errors.add(:date, "It can't be in the past") if date.present? && date <= Date.today
  end

  def time_must_be_greater_than_time_now
    errors.add(:time, 'It must be greater than time now') if time.present? && time > Time.now
  end
end
