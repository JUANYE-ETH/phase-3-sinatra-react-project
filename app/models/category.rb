class Category < ActiveRecord::Base
  has_many :todos

  def self.add(name)
    Category.create(name: name)
  end
  
end