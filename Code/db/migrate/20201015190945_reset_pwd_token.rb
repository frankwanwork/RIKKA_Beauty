class ResetPwdToken < ActiveRecord::Migration
  def change
    create_table :resetpwd do |t|
      t.string :email
      t.string :reset_token
      t.timestamps
    end
  end
end
