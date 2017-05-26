class Movie < ActiveRecord::Base
belongs_to :user
has_many   :reviews, through: :user

validates :user_id, presence: true
validates :movie_name,presence: true, length:{miniumum: 5, maximum:100}
validates :movie_length, presence: true
validates :director_name, presence: true, length:{minimum: 5, maximum:100}

mount_uploader :image, ImageUploader
end