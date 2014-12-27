class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :user, index: true
      t.text :title
      t.text :description

      t.timestamps
    end
  end
end
