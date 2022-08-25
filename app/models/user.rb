class User < ApplicationRecord
  has_many :orders
  has_many :order_items, through: :orders
  has_many :items, through: :order_items

  def ordered_items
    self.name
    self.items.pluck(:name)
    #"instance method"
    # refers to a specific user instance
  end

  def self.blah
    self.email
    #"class method"
    #all of the users
  end
end
