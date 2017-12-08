class Premiere < ApplicationRecord

  before_validation { create_slug }

  mount_uploader :image, ImageUploader

  def create_slug
    unless self.title.nil?
      self.slug = self.title.downcase.gsub(' ', '-')
    end
  end

  def formatted_release_date
    self.prem_date.strftime("%d de %B, %Y")
  end

  def to_param
    slug
  end
end
