class PlacaCarro < ApplicationRecord
  self.primary_key='placa'
  validates :placa, :proprietario, presence: true
end
