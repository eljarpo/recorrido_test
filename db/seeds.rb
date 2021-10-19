# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Employee.create(name: 'Ernesto', color: 'yellow')
Employee.create(name: 'Barbara', color: 'red')
Employee.create(name: 'Benjamin', color: 'blue')
Service.create(name: 'Monitor 1')
Service.create(name: 'Monitor 2')
Service.create(name: 'Monitor 3')
monday_this_week = Time.now.beginning_of_week
# LUNES
ServiceDuty.create(day_of_week: 1, start_time: monday_this_week + 19.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 1, start_time: monday_this_week + 20.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 1, start_time: monday_this_week + 21.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 1, start_time: monday_this_week + 22.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 1, start_time: monday_this_week + 23.hours, duration: 1, service_id: 1)
# MARTES
ServiceDuty.create(day_of_week: 2, start_time: monday_this_week + 1.day + 19.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 2, start_time: monday_this_week + 1.day + 20.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 2, start_time: monday_this_week + 1.day + 21.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 2, start_time: monday_this_week + 1.day + 22.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 2, start_time: monday_this_week + 1.day + 23.hours, duration: 1, service_id: 1)
# MIERCOLES
ServiceDuty.create(day_of_week: 3, start_time: monday_this_week + 2.day + 19.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 3, start_time: monday_this_week + 2.day + 20.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 3, start_time: monday_this_week + 2.day + 21.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 3, start_time: monday_this_week + 2.day + 22.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 3, start_time: monday_this_week + 2.day + 23.hours, duration: 1, service_id: 1)
# JUEVES
ServiceDuty.create(day_of_week: 4, start_time: monday_this_week + 3.day + 19.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 4, start_time: monday_this_week + 3.day + 20.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 4, start_time: monday_this_week + 3.day + 21.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 4, start_time: monday_this_week + 3.day + 22.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 4, start_time: monday_this_week + 3.day + 23.hours, duration: 1, service_id: 1)
# VIERNES
ServiceDuty.create(day_of_week: 5, start_time: monday_this_week + 4.day + 19.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 5, start_time: monday_this_week + 4.day + 20.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 5, start_time: monday_this_week + 4.day + 21.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 5, start_time: monday_this_week + 4.day + 22.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 5, start_time: monday_this_week + 4.day + 23.hours, duration: 1, service_id: 1)
# SABADO
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 10.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 11.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 12.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 13.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 14.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 15.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 16.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 17.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 18.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 19.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 20.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 21.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 22.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 23.hours, duration: 1, service_id: 1)
# DOMINGO
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 10.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 11.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 12.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 13.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 14.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 15.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 16.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 17.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 18.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 19.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 20.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 21.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 22.hours, duration: 1, service_id: 1)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 23.hours, duration: 1, service_id: 1)


## SERVICIO 2
ServiceDuty.create(day_of_week: 1, start_time: monday_this_week + 19.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 1, start_time: monday_this_week + 20.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 1, start_time: monday_this_week + 21.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 1, start_time: monday_this_week + 22.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 1, start_time: monday_this_week + 23.hours, duration: 1, service_id: 2)
# MARTES
ServiceDuty.create(day_of_week: 2, start_time: monday_this_week + 1.day + 19.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 2, start_time: monday_this_week + 1.day + 20.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 2, start_time: monday_this_week + 1.day + 21.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 2, start_time: monday_this_week + 1.day + 22.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 2, start_time: monday_this_week + 1.day + 23.hours, duration: 1, service_id: 2)
# MIERCOLES
ServiceDuty.create(day_of_week: 3, start_time: monday_this_week + 2.day + 19.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 3, start_time: monday_this_week + 2.day + 20.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 3, start_time: monday_this_week + 2.day + 21.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 3, start_time: monday_this_week + 2.day + 22.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 3, start_time: monday_this_week + 2.day + 23.hours, duration: 1, service_id: 2)
# JUEVES
ServiceDuty.create(day_of_week: 4, start_time: monday_this_week + 3.day + 19.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 4, start_time: monday_this_week + 3.day + 20.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 4, start_time: monday_this_week + 3.day + 21.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 4, start_time: monday_this_week + 3.day + 22.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 4, start_time: monday_this_week + 3.day + 23.hours, duration: 1, service_id: 2)
# VIERNES
ServiceDuty.create(day_of_week: 5, start_time: monday_this_week + 4.day + 19.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 5, start_time: monday_this_week + 4.day + 20.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 5, start_time: monday_this_week + 4.day + 21.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 5, start_time: monday_this_week + 4.day + 22.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 5, start_time: monday_this_week + 4.day + 23.hours, duration: 1, service_id: 2)
# SABADO
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 10.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 11.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 12.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 13.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 14.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 15.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 16.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 17.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 18.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 19.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 20.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 21.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 22.hours, duration: 1, service_id: 2)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 23.hours, duration: 1, service_id: 2)
## SERVICIO 3
# SABADO
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 10.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 11.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 12.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 13.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 14.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 15.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 16.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 17.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 18.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 19.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 20.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 21.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 22.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 6, start_time: monday_this_week + 5.day + 23.hours, duration: 1, service_id: 3)
# DOMINGO
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 10.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 11.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 12.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 13.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 14.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 15.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 16.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 17.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 18.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 19.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 20.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 21.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 22.hours, duration: 1, service_id: 3)
ServiceDuty.create(day_of_week: 7, start_time: monday_this_week + 6.day + 23.hours, duration: 1, service_id: 3)

Service.find(1).service_duties.order(:day_of_week).each do |service_duty|
    day_shift = DayShift.where(date: monday_this_week + (service_duty.day_of_week - 1).days, service_id: 1).first
    if day_shift.nil?
        day_shift = DayShift.create(date: monday_this_week + (service_duty.day_of_week - 1).days, service_id: 1)
    end
    shift = Shift.create(day_shift: day_shift, start_time: service_duty.start_time, duration: service_duty.duration)
end

Service.find(2).service_duties.order(:day_of_week).each do |service_duty|
    day_shift = DayShift.where(date: monday_this_week + (service_duty.day_of_week - 1).days, service_id: 2).first
    if day_shift.nil?
        day_shift = DayShift.create(date: monday_this_week + (service_duty.day_of_week - 1).days, service_id: 2)
    end
    shift = Shift.create(day_shift: day_shift, start_time: service_duty.start_time, duration: service_duty.duration)
end

Service.find(3).service_duties.order(:day_of_week).each do |service_duty|
    day_shift = DayShift.where(date: monday_this_week + (service_duty.day_of_week - 1).days, service_id: 3).first
    if day_shift.nil?
        day_shift = DayShift.create(date: monday_this_week + (service_duty.day_of_week - 1).days, service_id: 3)
    end
    shift = Shift.create(day_shift: day_shift, start_time: service_duty.start_time, duration: service_duty.duration)
end