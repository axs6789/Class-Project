class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :deadline
      t.string :category
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
