class RentItem < ApplicationRecord
  belongs_to :movie
  belongs_to :renter_user, class_name: 'User'

  validates :movie_id, uniqueness: {scope: :movie_id}


  def movie_present
    if movie.nil?
      errors.add(:movie, "is not valid.")
    end
  end

end
