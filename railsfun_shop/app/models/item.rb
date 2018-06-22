class Item < ActiveRecord::Base
  belongs_to :cate
  has_attached_file :cover, 
	styles: { 
		original: "1024x1024>",
		cover: "300x300>", 
		icon: "100x100"
	}, 
	default_url: "/images/missing.jpg"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
