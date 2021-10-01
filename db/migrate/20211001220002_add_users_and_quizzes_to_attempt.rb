class AddUsersAndQuizzesToAttempt < ActiveRecord::Migration[6.1]
  def change
    add_reference(:attempts, :quiz, foreign_key: true, null: false)
    add_reference(:attempts, :user, foreign_key: true, null: false)
  end
end
