class OwnerCostValidator < ActiveModel::Validator

  COST_LIMIT = 1000

  def validate(animal)
    if animal.person.monthly_cost > COST_LIMIT
      animal.errors.add(:owner_cost,
                        'Owner can not increase monthly cost')
    end
  end
end
