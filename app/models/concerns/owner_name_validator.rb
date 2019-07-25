class OwnerNameValidator < ActiveModel::Validator

  INVALID_LETTERS = ['A']

  def validate(animal)
    letter = animal.person.name[0].upcase

    if INVALID_LETTERS.include?(letter) && animal.animal_type.verify_first_letter
      animal.errors.add(:owner_name,
                        'Owner s name not permited to this animal type')
    end
  end
end
