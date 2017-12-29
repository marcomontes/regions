class Municipality < ApplicationRecord

  has_and_belongs_to_many :regions

  validates :name, presence: true
  validates :numeric_code, presence: true
  validates :numeric_code, uniqueness: true

  after_update :check_state

  def get_state
    state ? 'Activo' : 'Inactivo'
  end

  private

  def check_state
    unless state
      Region.all.each do |region|
        region.municipalities.delete(self)
      end
    end
  end
  
end
