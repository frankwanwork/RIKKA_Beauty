class AppointmentsController < ApplicationController
  
  def appointment_params
    params.require(:appointments).permit("appt_date(1i)", "appt_date(2i)", "appt_date(3i)", :timeslot, :user_tele, :user_email)
  end
  
  def show
    if session[:username] == nil
      redirect_to signin_users_path
    end

    case request.method_symbol
    when :get
      @appointments = Appointment.all
      puts @appointments
      return
    # date : 2012/12/13 -> date: Thu, 13 Dec 2012
    #if params[:appt_date2].nil? 
    #   params[:appt_date2] = Date.today
    #end
    
    #if params[:timeslot2].nil? 
    #  params[:timeslot2] = "23:00"
    #end
    when :post
      #if(params["appt_date2"]["(1i)"])
      @start_date= Date.new(params["appt_date2"]["(1i)"].to_i,
				params["appt_date2"]["(2i)"].to_i,
				params["appt_date2"]["(3i)"].to_i)
      @end_date = Date.new(params["appt_date1"]["(1i)"].to_i,
				params["appt_date1"]["(2i)"].to_i,
				params["appt_date1"]["(3i)"].to_i)
 
      if(@start_date.nil || @end_date.nil || params[:timeslot1].nil || params[:timeslot2].nil)
        @appointments = Appointment.all
      else
        @appointments = Appointment.search(@start_date, @end_date, params[:timeslot1], params[:timeslot2])
      end
      return

    end
  end

  def add
    if session[:username] == nil
      redirect_to signin_users_path
      return
    end

    case request.method_symbol
    when :get
      return

    when :post
      puts params

      new_appointmt = appointment_params
      new_appointmt[:appt_date] = Date.new(new_appointmt["appt_date(1i)"].to_i,
					new_appointmt["appt_date(2i)"].to_i,
					new_appointmt["appt_date(3i)"].to_i)
      new_appointmt[:user_name] = session[:username]
      @appointmt = Appointment.create!(new_appointmt.except(:appointment_date, :phone, :email))
      redirect_to appointments_path
    end
  end

  def edit
    if session[:username] == nil
      redirect_to signin_users_path
    end

    case request.method_symbol
    when :get
      return
    when :post
      new_appointmt = appointment_params
            @appointmt = Appointment.find_by(id: params.require(:appointments)[:id])
      if(@appointmt.user_name != session[:username] && session[:usertype] != 1)
        redirect_to appointments_path
        return
      end

      if(new_appointmt["appt_date(1i)"] != nil)
        new_appointmt[:appt_date] = Date.new(new_appointmt["appt_date(1i)"].to_i,
					new_appointmt["appt_date(2i)"].to_i,
					new_appointmt["appt_date(3i)"].to_i)
        @appointmt.update_attributes!(appt_date: new_appointmt[:appt_date])
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

      redirect_to appointments_path
    end
  end

  def drop
    if session[:username] == nil
      redirect_to signin_users_path
      return
    end

    @appointmt = Appointment.find_by(id: params[:id])
    if(@appointmt.user_name == session[:username] || session[:usertype] == 1)
      Appointment.destroy(params[:id])
    end

    redirect_to appointments_path

  end

end
