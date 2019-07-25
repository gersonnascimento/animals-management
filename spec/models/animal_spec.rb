require 'rails_helper'

RSpec.describe Animal, type: :model do
  context 'When verifying animal type' do
    it 'should return animal type s title' do
      type = create(:animal_type, title: 'type_of_animal')
      animal = build(:animal, animal_type: type)

      expect(animal.type).to eq(type.title)
    end
  end

  context 'When trying to save an animal, but must be over age limit' do
    it 'builded animal must not be valid' do
      type = create(:animal_type, title: 'Andorinha', need_verify_age: true)
      person = create(:person, birth_date: 17.years.ago)
      animal = build(:animal, animal_type: type, person: person)

      expect(animal.valid?).to eq(false)
    end
  end

  context 'When trying to save an animal, and be over limit age' do
    it 'builded animal must be valid' do
      type = create(:animal_type, title: 'Andorinha', need_verify_age: true)
      person = create(:person, birth_date: 18.years.ago)
      animal = build(:animal, animal_type: type, person: person)

      expect(animal.valid?).to eq(true)
    end
  end
end
