class AppointmentsController < ApplicationController
  
  def appointment_params
    params.require(:appointment).permit(:appt_date, :timeslot, :user_name, :user_tele, :user_email)
  end
  
  def show
    # date : 2012/12/13 -> date: Thu, 13 Dec 2012
    if params[:appt_date2].nil? 
       params[:appt_date2] = Date.today
    end
    
    if params[:timeslot2].nil? 
      params[:timeslot2] = "23:00"
    end
    
    @appointments = Product.search(params[:appt_date1].to_date, params[:appt_date2].to_date, params[:timeslot1], params[:timeslot2])
  end

  def add
  end

  def edit
  end

  def drop
  end
end
