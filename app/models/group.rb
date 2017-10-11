class Group < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  has_many :posts

  has_many :group_replationships
  has_many :members, through: :group_replationships, source: :user
end
