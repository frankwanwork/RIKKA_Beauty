class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :appt_date
      t.string :timeslot
      t.string :user_name
      t.string :user_tele
      t.string :user_email

      t.timestamps null: false
    end
  end
end
