class CreateIndices < ActiveRecord::Migration[7.0]
  def change
    create_table :indices do |t|
      t.string :img
      t.string :name
      t.string :description
      t.string :price
      t.string :quantity

      t.timestamps
    end
  end
end
