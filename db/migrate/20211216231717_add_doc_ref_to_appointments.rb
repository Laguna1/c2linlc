# frozen_string_literal: true

class AddDocRefToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :doc, foreign_key: { to_table: :users }
  end
end
