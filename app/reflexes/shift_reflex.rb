# frozen_string_literal: true

class ShiftReflex < ApplicationReflex
  # Add Reflex methods in this file.
  #
  # All Reflex instances include CableReady::Broadcaster and expose the following properties:
  #
  #   - connection  - the ActionCable connection
  #   - channel     - the ActionCable channel
  #   - request     - an ActionDispatch::Request proxy for the socket connection
  #   - session     - the ActionDispatch::Session store for the current visitor
  #   - flash       - the ActionDispatch::Flash::FlashHash for the current request
  #   - url         - the URL of the page that triggered the reflex
  #   - params      - parameters from the element's closest form (if any)
  #   - element     - a Hash like object that represents the HTML element that triggered the reflex
  #     - signed    - use a signed Global ID to map dataset attribute to a model eg. element.signed[:foo]
  #     - unsigned  - use an unsigned Global ID to map dataset attribute to a model  eg. element.unsigned[:foo]
  #   - cable_ready - a special cable_ready that can broadcast to the current visitor (no brackets needed)
  #   - reflex_id   - a UUIDv4 that uniquely identies each Reflex
  #
  # Example:
  #
  #   before_reflex do
  #     # throw :abort # this will prevent the Reflex from continuing
  #     # learn more about callbacks at https://docs.stimulusreflex.com/lifecycle
  #   end
  #
  #   def example(argument=true)
  #     # Your logic here...
  #     # Any declared instance variables will be made available to the Rails controller and view.
  #   end
  #
  # Learn more at: https://docs.stimulusreflex.com/reflexes#reflex-classes


    def set_employee_avaliability
        employee_id = element.dataset['employee']
        shift_id = element.dataset['shift']
        shift = Shift.find(shift_id)
        employee = Employee.find(employee_id)

        if shift.employees.include?(employee)
            shift.employees.delete(employee)
            morph "#d#{shift_id}_e#{employee_id}", render(partial: 'shifts/checkbox', locals: {shift: shift_id, employee: employee_id, selected: false})
        else
            shift.employees << employee
            morph "#d#{shift_id}_e#{employee_id}", render(partial: 'shifts/checkbox', locals: {shift: shift_id, employee: employee_id, selected: true})
        end
    end

    def select
        service_id = element.dataset['id']
        service = Service.find(service_id)

        morph '#service_header', render(partial: 'services/header', locals: {service: service})
    end

    def set_shift_employee
        service_id = element.dataset['service']
        service = Service.find(service_id)
        date = element.dataset['date']
        employee_id = element.value

        shift_id = element.dataset["shift"]
        shift = Shift.find(shift_id)

        shift.update(employee_id: employee_id)
        morph "#shift_employees_s#{service.id}_d#{service.this_week_shifts(date.to_date).first.date.cweek}", render(partial: "shifts/employees", locals: {employee_shifts: service.employee_shifts(date)})
        morph dom_id(shift), render(partial: "shifts/table_row", locals: {shift: shift, service: service, day_shift: shift.day_shift})
    end

end
