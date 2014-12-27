class CreateAnswears < ActiveRecord::Migration
  def change
    create_table :answears do |t|
      t.boolean :is_correct
      t.text :text
      t.references :question, index: true

      t.timestamps
    end
  end
end
