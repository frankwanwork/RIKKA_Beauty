class ResetPwdToken < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :reset_token
      t.timestamps
    end
  end
end