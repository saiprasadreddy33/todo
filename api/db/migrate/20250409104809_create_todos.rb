class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
