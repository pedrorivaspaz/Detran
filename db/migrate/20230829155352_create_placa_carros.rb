class CreatePlacaCarros < ActiveRecord::Migration[7.0]
  def change
    create_table :placa_carros do |t|
      t.string :proprietario
      t.string :modelo
      t.integer :ano

      t.timestamps
    end
  end
end
