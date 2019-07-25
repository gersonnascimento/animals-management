class AddVerifyFirstLetterToAnimalTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :animal_types, :verify_first_letter, :boolean
  end
end
