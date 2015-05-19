class Post < ActiveRecord::Base
include PublicActivity::Model
belongs_to :user

 has_attached_file :image, :styles => { 
 	:medium => "300x300>", 
 	:small => "140x140", 
 	:thumb => "64x64!" }
 validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
 



validates_presence_of :user_id
validates_presence_of :content

auto_html_for :content do 
	html_escape
	image
	youtube(width: "100%", height: 250, autoplay: false)
	link target: "blank", rel: "nofollow"
	simple_format
	
end

end
