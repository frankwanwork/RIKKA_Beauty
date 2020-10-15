class User < ActiveRecord::Base
    def send_password_reset_email
        UserMailer.password_reset(self).deliver_now 
    end
end
