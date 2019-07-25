class Animal < ApplicationRecord
  belongs_to :animal_type
  belongs_to :person

  validates_with OwnerAgeValidator
  validates_with OwnerNameValidator
  validates_with OwnerCostValidator

  def type
    animal_type.title
  end
end
