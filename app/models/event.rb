class Event < ActiveRecord::Base
  attr_protected
  has_many :comments, :as => :commentable
end
