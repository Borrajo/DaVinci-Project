class Oferta < ActiveRecord::Base

  belongs_to :productos, dependent: :destroy
  belongs_to :users, dependent: :destroy
  
	validates :necesidad,presence: true

	validates :user_id, :uniqueness => {:scope => :producto_id, message: "Solo puede ofertar una vez por producto" }
	
end



