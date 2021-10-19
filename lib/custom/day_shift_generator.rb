class DayShiftGenerator

    def initialize(service)
        now = Time.now
        @service = service
        @this_week = service.last_service_week + 1.week

        generate_shifts
    end

    def generate_shifts
        if @service.service_duties.size == 0
            @service.service_duties.order(:day_of_week).each do |service_duty|
                day_shift = DayShift.where(date: @this_week - 1.week + (service_duty.day_of_week - 1).days, service: @service).first
                if day_shift.nil?
                    day_shift = DayShift.create(date: @this_week - 1.week + (service_duty.day_of_week - 1).days, service: @service)
                end
                shift = Shift.create(day_shift: day_shift, start_time: service_duty.start_time, duration: service_duty.duration)
            end
        else
            @service.service_duties.order(:day_of_week).each do |service_duty|
                day_shift = DayShift.where(date: @this_week + (service_duty.day_of_week - 1).days, service: @service).first
                if day_shift.nil?
                    day_shift = DayShift.create(date: @this_week + (service_duty.day_of_week - 1).days, service: @service)
                end
                shift = Shift.create(day_shift: day_shift, start_time: service_duty.start_time, duration: service_duty.duration)
            end
        end
    end

end