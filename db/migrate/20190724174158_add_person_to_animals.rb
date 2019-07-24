class AddPersonToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_reference :animals, :person, foreign_key: true
  end
end
