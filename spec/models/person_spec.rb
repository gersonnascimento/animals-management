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
end
