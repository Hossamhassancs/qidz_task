class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :name, :movie
  end
end
