class RenameIdColumnToPlaca < ActiveRecord::Migration[7.0]
  def change
    rename_column :placa_carros, :id, :placa
  end
end
