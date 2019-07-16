class Link < ApplicationRecord
  validates :original_link, presence: true
  before_create :generate_short_link

  def generate_short_link
    SecureRandom.urlsafe_base64(4)
  end

end
