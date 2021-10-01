class User < ApplicationRecord
    has_many :attempts
    has_many :quizzes, through: :attempts
end
