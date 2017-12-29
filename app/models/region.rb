class Region < ApplicationRecord

  has_and_belongs_to_many :municipalities

  validates :name, presence: true
  validates :numeric_code, presence: true
  validates :numeric_code, uniqueness: true

  def update_municipalities(new_municipalities)
    new_municipalities.each{|m| municipalities << m unless municipalities.include?(m) }
  end
end
