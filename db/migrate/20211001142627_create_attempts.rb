class CreateAttempts < ActiveRecord::Migration[6.1]
  def change
    create_table :attempts do |t|
      t.integer :number_correct
      t.boolean :passed?

      t.timestamps
    end
  end
end
