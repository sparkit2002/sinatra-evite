class Registration < ActiveRecord::Base
  belongs_to :model
  belongs_to :person
end
