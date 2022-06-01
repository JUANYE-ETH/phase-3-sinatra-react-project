class CreateTodoTable < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :text
      t.integer :category_id
    end
  end
end
