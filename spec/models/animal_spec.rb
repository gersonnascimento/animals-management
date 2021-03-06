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

  context 'When trying to save an animal, but owner s name must not starts with certain letter' do
    it 'builded animal must not be valid' do
      type = create(:animal_type, verify_first_letter: true)
      person = create(:person, birth_date: 17.years.ago, name: 'Alex')
      animal = build(:animal, animal_type: type, person: person)

      expect(animal.valid?).to eq(false)
    end
  end

  context 'When trying to save an animal, and owner s name not starts with certain letter' do
    it 'builded animal must be valid' do
      type = create(:animal_type, verify_first_letter: true)
      person = create(:person, birth_date: 17.years.ago, name: 'Eduardo')
      animal = build(:animal, animal_type: type, person: person)

      expect(animal.valid?).to eq(true)
    end
  end

  context 'When trying to save an animal, and owner s name starts with invalid letter, animal is permited' do
    it 'builded animal must be valid' do
      type = create(:animal_type)
      person = create(:person, birth_date: 17.years.ago, name: 'Alex')
      animal = build(:animal, animal_type: type, person: person)

      expect(animal.valid?).to eq(true)
    end
  end

  context 'When trying to save an animal, and owner s monthly cost is bigger than permited' do
    it 'builded animal must not be valid' do
      person = create(:person)
      create_list(:animal, 6, person: person, monthly_cost: 199)
      new_animal = build(:animal, person: person)
      person.reload

      expect(new_animal.valid?).to eq(false)
    end
  end
end
