class Quiz < ApplicationRecord
    has_many :questions
    has_many :attempts
    has_many :users, through: :attempts
end
