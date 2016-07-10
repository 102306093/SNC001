class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :orderlists, :orderttatus, :orderstatuss
  end
end
