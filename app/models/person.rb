class Person < ApplicationRecord
  #Validations
  validates_presence_of :name

  #Callbacks
  #after_create -  runs once after model is created
  #before_create - runs once right before model is created
  #after_save - runs each time after a model is saved
  #before_save - runs each time before a model is saved
  #after_initialize - runs once after a Person.new
  #before_initialize - runs before instance gets created in memory
  #after_vlidate - runs after all validations
  #before_validate - runs before all validations

  #Associations
  #has_one
  #has_many
  #belongs_to
  #has_many_through
  #has_one_through
  has_many :animals, dependent: :destroy

  #Instance Methods
  def info
    "#{name} is of age: #{age}"
  end
  #call Person.info

  #Class Methods - ******scopes******
  #orders people by name, age etc..

  #Person.all.by_name.by_age (sorts by name then by age)

  #Default order from A-Z
  def self.by_name
    order(:name)
  end
  #call Person.all.by_name

  def self.by_age
    order(:age)
  end
  #call Person.all.by_age
end
