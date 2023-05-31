class AddDefaultToReservationStatus < ActiveRecord::Migration[7.0]
  def change
    change_column :reservations, :reservation_status, :string, default: 'pending'
  end
end
