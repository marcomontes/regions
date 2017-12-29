class Municipality < ApplicationRecord

  has_and_belongs_to_many :regions

  def get_state
    state ? 'Activo' : 'Inactivo'
  end
  
end
