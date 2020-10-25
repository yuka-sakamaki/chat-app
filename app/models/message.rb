class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true, unless: was_atteched?

  def was_atteched?
    self.image.attached?
  end
end
