FactoryBot.define do
  factory :animal do
    name { 'Spike' }
    monthly_cost { 100 }
    animal_type { create(:animal_type) }
    person { create(:person) }
  end
end
