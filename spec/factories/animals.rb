FactoryBot.define do
  factory :animal do
    name { 'Spike' }
    monthly_cost { 10 }
    animal_type { create(:animal_type) }
    person { create(:person) }
  end
end
