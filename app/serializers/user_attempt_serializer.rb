class UserAttemptSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :attempts
end
