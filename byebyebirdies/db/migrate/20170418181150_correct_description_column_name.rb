class CorrectDescriptionColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :birds, :desciption, :description
  end
end
