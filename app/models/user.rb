class User < ActiveRecord::Base
has_many :movies
has_many :reviews
before_save { self.email=email.downcase }
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates  :name, presence: true, length:{miniumum: 5, maximum:40}
validates   :email, presence: true,  length: {maximum:105},
                                      uniqueness: {case_sensitive: false},
                                       format: {with: VALID_EMAIL_REGEX}
end