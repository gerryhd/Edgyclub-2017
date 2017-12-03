class Movie < ApplicationRecord
  before_validation { create_slug }
  before_validation { initialize_description }
  before_save { initialize_availability }
  
  validates_presence_of :title, :description
  validates_uniqueness_of :slug

  mount_uploader :image, ImageUploader

  def formatted_release_date
    self.release_date.strftime("%B %Y")
  end

  def create_slug
    unless self.title.nil?
      self.slug = self.title.downcase.gsub(' ', '-')
    end
  end

  def initialize_availability
    unless self.available.nil?
      self.available = true
    end
  end

  def initialize_description
    self.description ||= "Lorem Ipsum dolor sit amet, consectetur adipiscing elit."
  end
  def to_param
    slug
  end
end
