class AddQuizToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_reference(:questions, :quiz, foreign_key: true, null: false)
  end
end
