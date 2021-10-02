class Attempt < ApplicationRecord
    belongs_to :quiz
    belongs_to :user

    validates :number_correct, presence: true
    validates :passed?, inclusion: { in: [true, false] }
    validates :user_id, presence: true
    validates :quiz_id, presence: true
end
