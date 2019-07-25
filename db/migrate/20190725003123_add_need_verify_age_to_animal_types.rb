class AddNeedVerifyAgeToAnimalTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :animal_types, :need_verify_age, :boolean
  end
end
