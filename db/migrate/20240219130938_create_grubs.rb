class CreateGrubs < ActiveRecord::Migration[7.1]
  def change
    create_table :grubs do |t|
      t.string :name
      t.string :cuisine
      t.integer :calories
      t.string :price

      t.timestamps
    end
  end
end
