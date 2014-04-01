class Photo < ActiveRecord::Base
  attr_protected
  has_many :comments, :as => :commentable 
  has_attached_file :image,
                  :url  => "/assets/photos/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/photos/:id/:style/:basename.:extension"
		  
  validates_attachment_content_type :image, :content_type => /image/ 
  end
