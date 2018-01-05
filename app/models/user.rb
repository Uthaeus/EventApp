class User < ApplicationRecord
  has_many :registrations
  has_many :events, :through => :registrations
  has_many :events
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates_presence_of :full_name

  def first_name
  	self.full_name.split.first
  end

  def last_name
  	self.full_name.split.last
  end

end
