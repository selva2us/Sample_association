class Comment < ActiveRecord::Base
  attr_protected
  belongs_to :commentable, :polymorphic => true
end
