class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :category
      t.string :name
      t.string :sword
      t.string :spell

      t.timestamps
    end
  end
end
