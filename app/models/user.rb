class User < ApplicationRecord
  has_one_attached :image

  def name
    "#{first_name} #{last_name}".strip
  end
end
