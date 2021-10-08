class User < ApplicationRecord
    has_secure_password
    has_many :attempts, dependent: :destroy
    has_many :quizzes, through: :attempts
    validates :name, presence: true
    validates :name, uniqueness: true

    def attempted_quizzes
        attepmts = attempts.collect do |attempt|
            {
                :id => attempt.id,
                :number_correct => attempt.number_correct,
                :passed? => attempt.passed?,
                :quiz => {
                    :id => attempt.quiz.id,
                    :name => attempt.quiz.name
                }
            }
        end
    end
end
