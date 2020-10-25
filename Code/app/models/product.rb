class Product < ActiveRecord::Base
    has_many :pictures
    validates :productName, presence: true
end
