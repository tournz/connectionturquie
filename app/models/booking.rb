class Booking < ApplicationRecord
  belongs_to :user
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  def end_time_cannot_be_before_start_time
    if end_time < start_time
      errors.add(:end_time, "end time cannot be before start time")
    end
  end
end
