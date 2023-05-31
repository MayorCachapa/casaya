class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :property, null: false, foreign_key: true
      t.date :starts_at
      t.date :ends_at
      t.float :total_price
      t.string :reservation_status

      t.timestamps
    end
  end
end
