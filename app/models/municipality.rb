class Municipality < ApplicationRecord

  has_and_belongs_to_many :regions

  validates :name, presence: true
  validates :numeric_code, presence: true
  validates :numeric_code, uniqueness: true

  def get_state
    state ? 'Activo' : 'Inactivo'
  end
  
end
