class Premiere < ApplicationRecord

  before_validation { create_slug }

  def create_slug
    unless self.title.nil?
      self.slug = self.title.downcase.gsub(' ', '-')
    end
  end
end
