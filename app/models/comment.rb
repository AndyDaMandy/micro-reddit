class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :content, :presence => true, :length => { :minimum => 1 }
  validates :user, :presence => true
  validates :post, :presence => true
end
