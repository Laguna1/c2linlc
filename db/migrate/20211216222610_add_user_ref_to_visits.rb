# frozen_string_literal: true

class AddUserRefToVisits < ActiveRecord::Migration[6.1]
  def change
    add_reference :visits, :creator, foreign_key: { to_table: :users }
  end
end
