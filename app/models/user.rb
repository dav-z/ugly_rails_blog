class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :email, length: { minimum: 5 }
  # validates :password, length: { minimum: 6 }

  def full_name
    "#{fname} #{lname}".strip
  end
end
