class RemoveCreatorFromVisits < ActiveRecord::Migration[6.1]
  def change
    remove_column :visits, :creator_name
  end
end
