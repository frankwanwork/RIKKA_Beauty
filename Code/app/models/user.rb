class User < ActiveRecord::Base
  has_many :resetpwd
end

class ResetPwd< ActiveRecord::Base
  self.table_name = 'resetpwd'
  belongs_to :user
end
