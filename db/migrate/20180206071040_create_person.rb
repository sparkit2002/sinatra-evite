class CreatePerson < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |per|
      per.string :name
      per.date :birthday
      per.string :gender
      per.integer :zipcode
    end
  end
end
