class User < ApplicationRecord
    has_many :attempts
    has_many :quizzes, through: :attempts
    validates :name, presence: true
    validates :name, uniqueness: true
end
