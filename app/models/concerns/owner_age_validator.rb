class OwnerAgeValidator < ActiveModel::Validator

  AGE_TO_VERIFY = 18

  def validate(animal)
    if animal.person.age < AGE_TO_VERIFY && animal.animal_type.need_verify_age
      animal.errors.add(:owner_age, 'Owner must be over 18 years old to have
                                     this animal')
    end
  end
end
