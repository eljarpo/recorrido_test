class Shift < ApplicationRecord
  belongs_to :day_shift
  belongs_to :employee, optional: true
  has_and_belongs_to_many :employees

  def table_color
    if self.employee.nil?
      ''
    elsif self.employee.color == 'red'
      'table-danger'
    elsif self.employee.color == 'blue'
      'table-primary'
    elsif self.employee.color == 'yellow'
      'table-warning'
    elsif self.employee.color == 'lightblue'
      'table-info'
    elsif self.employee.color == 'grey'
      'table-secondary'
    elsif self.employee.color == 'green'
      'table-success'
    else
      'table-success'
    end
  end
end
