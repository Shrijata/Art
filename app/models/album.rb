class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs
  belongs_to :user
end
