class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum gender: [:male, :female]
  has_and_belongs_to_many :events

  validates_presence_of :name,   message: "can't be blank"
  validates_presence_of :gender, message: "can't be blank"

  def male?
    gender == "male"  	
  end

  def female?
    gender == "female"
  end

  def attending?(event)
    self.events.present? && self.events.find_by_id(event.id).present?
  end

end
