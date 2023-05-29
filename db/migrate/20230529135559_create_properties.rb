class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :price_per_night
      t.integer :number_of_guests
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
