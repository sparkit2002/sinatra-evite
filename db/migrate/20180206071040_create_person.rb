class CreatePerson < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |x|
      x.string :name
      x.string :birthday
      x.string :gender
      x.integer :zipcode
    end
  end
end
