class CreateKoans < ActiveRecord::Migration
  def change
    create_table :koans do |t|
      t.string :name
      t.text :question
      t.text :code
      t.text :actual_answer
      t.text :proposed_answer

      t.timestamps
    end
  end
end
