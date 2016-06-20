class Event < ActiveRecord::Base
  
  has_and_belongs_to_many :users

  validates_presence_of   :name,  message: "can't be blank"
  validates_presence_of   :venue, message: "can't be blank"
  validates_presence_of   :time,  message: "can't be blank"
  validates_presence_of   :price, message: "can't be blank"
  validates_uniqueness_of :time, scope: [:venue, :time], message: "Duplicate record"

  def self.female_discount
  	5
  end

  def female_discount_price
  	self.price*(100 - Event.female_discount)/100
  end

end
