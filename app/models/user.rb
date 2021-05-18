class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :username, presence: true, length: { in: 4..25 }, uniqueness: true
  validates :password, presence: true,
                       length: { in: 8..100 },
                       format: { with: /\A[a-zA-Z0-9_]+\z/,
                                 message: 'must be alphanumeric (with optional underscores)' }
end
