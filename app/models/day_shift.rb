class DayShift < ApplicationRecord
  belongs_to :service
  has_many :shifts

  def self.shifts(selected_date = Date.today)
    joins(:shifts).where("date >= ? AND date <= ?", selected_date.to_date.beginning_of_week, selected_date.to_date.end_of_week)
  end
end
