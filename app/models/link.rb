class Link < ApplicationRecord
  before_create :generate_short_link


  def generate_short_link
    SecureRandom.urlsafe_base64(4)
  end


end
