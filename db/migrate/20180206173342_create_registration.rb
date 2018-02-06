class CreateRegistration < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |r|
      r.string :person_name
      r.string :event_name
      r.string :rsvp
    end
  end
end
