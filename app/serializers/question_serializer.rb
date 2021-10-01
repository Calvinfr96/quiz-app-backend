class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :prompt, :answers, :correct_index
  belongs_to :quiz
end
