class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :title, null: false
      t.text :detail
      t.boolean :delete_flg
      t.timestamps
    end
  end
end
