class Product < ActiveRecord::Base
    has_many :pictures

    validates :productname, presence: true
    
    mount_uploader :image, ImageUploader
    acts_as_taggable_on :tags
    
    def self.search(search)
        if search
            Product.where(["productName LIKE ?", "%#{search}%"])
        else
         Product.all
        end
    end
end

class Picture < ActiveRecord::Base
    belongs_to :product
end
