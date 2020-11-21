class AppointmentsController < ApplicationController
  
  def appointment_params
    params.require(:appointment).permit(:appointment_date, :timeslot, :phone, :email)
  end
  
  def show
    if session[:username] == nil
      redirect_to signin_users_path
    end

    case request.method_symbol
    when :get
      @appointments = Appointment.all
      return
    # date : 2012/12/13 -> date: Thu, 13 Dec 2012
    #if params[:appt_date2].nil? 
    #   params[:appt_date2] = Date.today
    #end
    
    #if params[:timeslot2].nil? 
    #  params[:timeslot2] = "23:00"
    #end
    when :post
      @appointments = Appointment.search(params[:appt_date1].to_date, params[:appt_date2].to_date, params[:timeslot1], params[:timeslot2])
      return
    end
  end

  def add
    if session[:username] == nil
      redirect_to signin_users_path
      return
    end

    new_appointmt = appointment_params
    new_appointmt[:appt_date] = new_appointmt[:appointment_date].to_date
    new_appointmt[:user_tele] = new_appointmt[:phone]
    new_appointmt[:user_email] = new_appointmt[:email]
    new_appointmt[:user_name] = session[:username]
    @appointmt = Appointment.create!(new_appointmt.except(:appointment_date, :phone, :email))
    redirect_to appointments_path
  end

  def edit
    if session[:username] == nil
      redirect_to signin_users_path
    end

    new_appointmt = appointment_params
    @appointmt = Appointment.find_by(id: params[:id])
    if(@appointmt.user_name != session[:username] && session[:usertype] != 1)
      redirect_to appointments_path
    end

    if(new_appointmt[:timeslot] != nil)
      @appointmt.update_attributes!(timeslot: new_appointmt[:timeslot])
    end
    if(new_appointmt[:phone] != nil)
      @appointmt.update_attributes!(user_tele: new_appointmt[:phone])
    end
    if(new_appointmt[:email] != nil)
      @appointmt.update_attributes!(user_email: new_appointmt[:email])
    end

  end

  def drop
    if session[:usertype] != 1
      redirect_to signin_users_path
    end

  end
end
