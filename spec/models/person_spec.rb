require 'rails_helper'

RSpec.describe Person, type: :model do
  context 'When calculating age of a person with exactly 10 years old' do
    it 'should return age correctly' do
      person = build(:person, birth_date: 10.years.ago)

      expect(person.age).to eq(10)
    end
  end

  context 'When calculating age of a person with almost 18 years old' do
    it 'should return 17 years old' do
      person = build(:person, birth_date: 18.years.ago.next_month)

      expect(person.age).to eq(17)
    end
  end

  context 'When calculating age of a person with 18 years and a month' do
    it 'should return 18 years old' do
      person = build(:person, birth_date: 18.years.ago.prev_month)

      expect(person.age).to eq(18)
    end
  end

  context 'When calculating monthly_cost of a person' do
    it 'should calculate correctly' do
      person = create(:person)
      create_list(:animal, 10 , person: person, monthly_cost: 8)

      expect(person.monthly_cost).to eq(80)
    end

    it 'should calculate only owners animals value' do
      person = create(:person)
      create_list(:animal, 10 , person: person, monthly_cost: 8)
      create_list(:animal, 10 , monthly_cost: 80)

      expect(person.monthly_cost).to eq(80)
    end
  end

  context 'When calculating monthly_cost of a person missing animals' do
    it 'should return 0' do
      person = create(:person)

      expect(person.monthly_cost).to eq(0)
    end
  end
end
