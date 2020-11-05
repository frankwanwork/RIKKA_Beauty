class Product < ActiveRecord::Base
    has_many :pictures

    validates :productName, presence: true
    
    mount_uploader :image, ImageUploader
    acts_as_taggable_on :tags
end

class Picture < ActiveRecord::Base
    belongs_to :product
end
