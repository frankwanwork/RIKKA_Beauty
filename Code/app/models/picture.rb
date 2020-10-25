class Picture < ActiveRecord::Base
    belongs_to :product
    validates :productName, presence: true
    
end
