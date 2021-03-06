class User < ApplicationRecord

  before_create { grant_starting_credits }
  before_create { confirm }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :confirmable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :rent_items, foreign_key: :id

  enum member_type: [:free, :paid, :premium]

  def grant_starting_credits
    self.total_credits ||= 50
  end

  def confirm 
    self.skip_confirmation!
  end
end


