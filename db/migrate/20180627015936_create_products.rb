class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :code
      t.string :description
      t.string :unity
      t.integer :stock
      t.date :date

      t.timestamps
    end
  end
end
