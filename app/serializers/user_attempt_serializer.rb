class UserAttemptSerializer < ActiveModel::Serializer
  attributes :id, :name, :attempted_quizzes
end
