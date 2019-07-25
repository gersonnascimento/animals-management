class Animal < ApplicationRecord
  belongs_to :animal_type
  belongs_to :person

  validates_with OwnerAgeValidator
  validates_with OwnerNameValidator

  def type
    animal_type.title
  end
end
