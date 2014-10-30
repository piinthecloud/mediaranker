class MediaRanker < ActiveRecord::Base
  has_many :books
  has_many :movies
  has_many :albums
end
