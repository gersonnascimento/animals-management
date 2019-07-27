class Person < ApplicationRecord
  has_many :animals

  def age
    now = Time.zone.now
    birth = birth_date.to_time
    person_age = now.year - birth.year
    unless now.month == birth.month && now.day >= birth.day || now.month > birth.month
      person_age = person_age.pred
    end
    person_age
  end

  def monthly_cost
    animals.map{ |animal| animal.monthly_cost}.sum
  end
end
