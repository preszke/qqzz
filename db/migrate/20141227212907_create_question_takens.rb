class CreateQuestionTakens < ActiveRecord::Migration
  def change
    create_table :question_takens do |t|
      t.references :question, index: true
      t.references :user, index: true
      t.integer :attempts

      t.timestamps
    end
  end
end
