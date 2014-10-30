class Movie < ActiveRecord::Base
  belongs_to :media_ranker
  validates :creator, presence: true
  validates :name, presence: true
  validates :description, presence: true

end
