FactoryBot.define do
  factory :animal_type do
    title { 'Cachorro' }
    need_verify_age { false }
    verify_first_letter { false }
  end
end
