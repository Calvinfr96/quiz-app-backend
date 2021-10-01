class AttemptSerializer < ActiveModel::Serializer
  attributes :id, :number_correct, :passed?
  belongs_to :user
  belongs_to :quiz
end
