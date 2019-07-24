class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.decimal :monthly_cost
      t.references :animal_type, foreign_key: true

      t.timestamps
    end
  end
end
