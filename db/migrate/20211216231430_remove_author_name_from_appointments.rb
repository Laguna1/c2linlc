class RemoveAuthorNameFromAppointments < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointments, :author_name
  end
end
