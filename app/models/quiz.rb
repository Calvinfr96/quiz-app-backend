class Quiz < ApplicationRecord
    has_many :questions, dependent: :destroy
    has_many :attempts
    has_many :users, through: :attempts

    validates :name, presence: true
    validates :name, uniqueness: true
end
