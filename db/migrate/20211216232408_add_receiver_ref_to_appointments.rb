class AddReceiverRefToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :receiver, foreign_key: { to_table: :users }
  end
end
