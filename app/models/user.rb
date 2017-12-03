class User < ApplicationRecord

  before_create { grant_starting_credits }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :confirmable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :rent_items, foreign_key: :id

  def grant_starting_credits
    self.total_credits ||= 50
  end
end

