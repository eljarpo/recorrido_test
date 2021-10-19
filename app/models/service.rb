class Service < ApplicationRecord
    has_many :service_duties
    has_many :day_shifts

    def employee_shifts(selected_date = Date.today)
        employee_shifts_count = self.day_shifts.shifts(selected_date).select(:employee_id).group(:employee_id).count
        nil_values = self.day_shifts.shifts(selected_date).pluck(:employee_id).select(&:nil?).count
        if employee_shifts_count.keys.first.blank?
            employees = [] 
        else
            employees = Employee.find(employee_shifts_count.keys)
        end
        employees.map{ |employee| { name: employee.name || 'Sin Asignar', shifts: employee_shifts_count[employee.id].to_i, color: employee.color }} << { name: 'Sin Asignar', shifts: nil_values.to_i}
    end

    def last_service_week
        day_shifts.order(:date).last.nil? ? Time.now.beginning_of_week : day_shifts.order(:date).last.date.beginning_of_week
    end

    def this_week_shifts(selected_date = Date.today)
        day_shifts.where("date >= ? AND date <= ?", selected_date.to_date.beginning_of_week, selected_date.to_date.end_of_week)
    end

    def has_shifts?
        day_shifts.size == 0
    end

end
