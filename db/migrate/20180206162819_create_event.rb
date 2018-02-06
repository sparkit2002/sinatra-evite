class CreateEvent < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |e|
      e.string :name
      e.date :date
    end
  end
end
