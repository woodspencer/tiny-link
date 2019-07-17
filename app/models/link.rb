class Link < ApplicationRecord
  validates :original_link, url: true

  def generate_short_link
    SecureRandom.urlsafe_base64(4)
  end
end
