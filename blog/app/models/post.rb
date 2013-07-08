class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy;
  validates_uniqueness_of :title                         
  validates_presence_of :title, :content, :user 
  #carrierwave image uploader
  mount_uploader :image,ImageUploader  
end
