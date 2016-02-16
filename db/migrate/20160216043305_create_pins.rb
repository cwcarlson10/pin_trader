class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.text :description
      t.integer :pin_number
      t.string :image
      t.boolean :limeted_edition
      t.integer :original_price

      t.timestamps null: false
    end
  end
end
