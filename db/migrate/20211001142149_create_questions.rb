class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :prompt
      t.string :answers, array: true
      t.integer :correct_index

      t.timestamps
    end
  end
end
