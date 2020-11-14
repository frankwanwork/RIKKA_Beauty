class Appointment < ActiveRecord::Base
    def self.search(date1, date2, timeslot1, timeslot2)
        if search
            Appointment.where("appt_date >= :start_date AND appt_date <= :end_date",{start_date: params[:date1], end_date: params[:date2]}).where(
                "timeslot >= :start_time AND timeslot <= :end_time",{start_time: params[:timeslot1], end_date: params[:timeslot2]}).order("appt_date ASC")
        else
         Appointment.all
        end
    end
end
