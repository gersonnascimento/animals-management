require 'rails_helper'

RSpec.describe AnimalType, type: :model do
  context 'When trying to save an invalid animal type' do
    it 'type should not be valid' do
      type = build(:animal_type, title: nil)

      expect(type.valid?).to eq(false)
    end
  end
end
