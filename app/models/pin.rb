class Pin < ActiveRecord::Base
 has_attached_file :image, styles: {medium: "300x240"}
	attr_accessible :description, :image
	  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	validates :description, presence: true
	validates :user_id,presence: true
	
	belongs_to :user
	
	
	
end
