class Question < ApplicationRecord
    belongs_to :quiz

    validates :prompt, presence: true
    validates :prompt, uniqueness: true
    validates :answers, presence: true
    validates :correct_index, presence: true
end
