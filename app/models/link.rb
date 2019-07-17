class Link < ApplicationRecord
  validates :original_link, url: true, length: {minimum: 10}
  def generate_short_link
    SecureRandom.urlsafe_base64(4)
  end
end
