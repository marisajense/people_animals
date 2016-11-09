class Animal < ApplicationRecord
  validates_presence_of :species, :name
  
  belongs_to :person
end
