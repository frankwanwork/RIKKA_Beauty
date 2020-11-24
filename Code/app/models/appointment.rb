class Appointment < ActiveRecord::Base
    def self.search(date1, date2, timeslot1, timeslot2)
        Appointment.where("appt_date >= :start_date AND appt_date <= :end_date",{start_date: date1, end_date: date2}).where(
                "timeslot >= :start_time AND timeslot <= :end_time",{start_time: timeslot1, end_time: timeslot2}).order("appt_date ASC")
    end
end
